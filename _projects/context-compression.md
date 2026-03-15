---
layout: project
title: "Cognitive Compression"
description: "Hierarchical Chain-of-Thought pruning for efficient LLM reasoning — Stanford CS224N project"
tags: [nlp, llm, compression, reasoning, python, transformers]
github: https://github.com/anujjamwal/cognitive-compression
---

## Abstract

Chain-of-Thought (CoT) reasoning enables Large Language Models to solve complex problems through step-by-step decomposition, but incurs linear growth in context length and KV-cache memory. Cognitive Compression restructures flat CoT into a hierarchical tree of subproblems using three special tokens — `[THOUGHT]`, `[SOLUTION]`, and `[RETURN]` — and prunes completed reasoning branches during autoregressive generation. When a subproblem is solved, the verbose intermediate tokens between `[THOUGHT]` and `[SOLUTION]` are physically removed from the sequence, retaining only the concise solution summary. We fine-tune Nemotron-1.5B on a dataset of ~1,500 hierarchically annotated mathematical reasoning traces and implement a custom generation loop with KV-cache-aware pruning.

## Approach

### Hierarchical Chain of Thought

The method introduces three special tokens into the model vocabulary:

- `[THOUGHT]` marks the start of reasoning for a subproblem
- `[SOLUTION]` marks the transition from verbose reasoning to a concise summary
- `[RETURN]` signals that the subproblem is complete and the branch can be pruned

These tokens encode a recursive structure analogous to a function call stack. Subproblems may contain nested subproblems at arbitrary depth, and each is pruned independently when its `[RETURN]` token is generated.

### Training

**Data Collection.** We constructed a hierarchical CoT dataset from OpenMathReasoning, sampling ~1,500 problems with long reasoning traces. Claude 4.6 Opus and Gemini 3.1 Pro were used to segment each flat CoT into hierarchical form, identifying logical breakpoints and wrapping each subproblem in `[THOUGHT]...[SOLUTION]...[RETURN]` markers while preserving original wording exactly.

**Special Token Initialization.** Since the dataset is small (~1,500 examples), each special token embedding was seeded with the average embedding of semantically related tokens (e.g., `[THOUGHT]` seeded from "subproblem start"), significantly accelerating convergence.

**Prune-Aware Training.** To close the train-inference gap, each training example is split into stages at each `[RETURN]` token. Each stage represents the sequence the model would see after the k-th pruning event, and is treated as an independent training example via flatMap. Labels are masked for already-processed prefix tokens to prevent over-weighting surviving tokens.

Training was done using the TRL SFTTrainer with AdamW optimizer, cosine LR schedule (peak 1e-4), 10 epochs, on 8,192 max sequence length with bfloat16 precision. Training loss converged to ~0.005 and mean token accuracy reached ~0.999.

### Inference

Standard autoregressive generation cannot handle mid-sequence token removal. We implemented a custom generation loop extending the HuggingFace GenerationMixin with pruning-aware logic:

1. When `[RETURN]` is generated, the matching `[THOUGHT]` and `[SOLUTION]` are located
2. Thought tokens between them are physically removed from the sequence
3. The KV cache is trimmed to the prefix, and only solution tokens are re-processed
4. Position IDs are renumbered to be contiguous, matching the training regime

The cache trimming supports batch processing with heterogeneous pruning and is compatible with both Transformers ≥5.x and older versions.

## Results

Evaluated on the Qwen/PolyMath benchmark for mathematical reasoning:

- **92% completion rate** maintained even when the physical context window is reduced by 87.5% (from 8,192 to 1,024 tokens)
- **Accuracy remains stable** for most tasks until the context window drops below 2,048 tokens
- At the restricted 1,024-token window, our model outperforms the baseline by 15-20% on completion rate — the baseline frequently fails entirely when the buffer overflows
- **Graceful degradation** rather than total system failure when hardware constraints are reached

The model acts as a "dynamic density" mechanism: aggressively pruning during descriptive reasoning phases while preserving the high-entropy solution steps.

## Links

- [GitHub Repository](https://github.com/anujjamwal/cognitive-compression)
- [Project Report (PDF)](https://github.com/anujjamwal/cognitive-compression/blob/main/CS224N__Project_Final_Report_2026.pdf)
- [Fine-tuned Model — anujjamwal/OpenMath-Nemotron-1.5B-PruneAware](https://huggingface.co/anujjamwal/OpenMath-Nemotron-1.5B-PruneAware)
- [Training Dataset — anujjamwal/OpenMathReasoning-Sampled-Hierarchical-Cot](https://huggingface.co/datasets/anujjamwal/OpenMathReasoning-Sampled-Hierarchical-Cot)
