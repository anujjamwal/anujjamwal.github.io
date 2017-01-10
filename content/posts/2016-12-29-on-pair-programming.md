---
title: "On Pair Programming"
created_at: 2016-12-29 23:45:51 +0530
kind: article
draft: true
---

<!-- more -->

Pair programming is perhaps one of the most talked about, yet least implemented Agile practices. As a Software Developer practicing this for a little over four years now, the skepticism in everyone's minds is both confusing and disturbing at the same time to me. 

Wikipedia describes *Pair Programming* as

>Pair programming is an agile software development technique in which two programmers work together at one workstation. One, the driver, writes code while the other, the observer or navigator, reviews each line of code as it is typed in. The two programmers switch roles frequently.

Honestly, this definition has all the reasons to cause confusion. The frequent ones which I have heard from clients, managers and other developers alike include:

1. Two people working on the same workstation, that means a dip in the velocity. Would we now deliver half the features ?
2. It would work when people are at the same "level". It would not work when a lead is pairing with a fresher or the pair is imbalanced in terms of skills, experience, motivation etc.
3. We need a code reviewer to merge the changes. Why have a person contantly reviewing the code when we will anyways have a code review ?

In this post, I will try to address these and explain my interpretation and work style of Pair Programming.

Lets start with what pair programming really is. Wikipedia has the image (below) to explain pair programming. In the image you can notice one person holding the mouse and keyboard and the person to the left having some papers on the desk and pointing towards the screen possibly explaining some issue or directing the co worker.

![Wikipedia Image on Pair Programming](https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Pair_programming_1.jpg/660px-Pair_programming_1.jpg)


## Pair Programming and TDD

Pair Programming works best when coupled with Test Driven Development aka TDD. TDD is the practice of writing tests before code. This is simple order shift makes a whole lot of difference in the output. (more on this in upcoming post). Book TDD by example.

Coupled with TDD, the pair in morning signs up for the story. Post a discussion with Product Owner and QA, as they sit to to start development, they discuss about the story and the starting point.  The first thing that happens is that one of them, say Mr A, writes a test case for the discussed part and the other person, say Mr B, reviews the test code. Now, Mr B writes the code just enough to pass the test and Mr A reviews the code. Once the test is passed, Mr A continues to more test while Mr B passes these tests. After a while they switch roles and now Mr B writes tests while Mr A writes the code to pass the test. This style of coding is also called the Ping Pong style of coding. 

This practice makes all the sense in the world. Developers are very lazy and optimistic beings. When having to follow TDD on their own they generally tend to falter and skip some test cases. Sometimes they are eager to write code and skip tests to end which are then never written because developer will make all the excuses of the code being dumb and dead simple and that is where the rot begins. On the other hand when done with Pair Programming, one person in the pair is solely responsible for writing tests (until the switch in role) and he/she writes test code for everything and challenges the counter part to pass the written test. In a way we gamified the process. The outcome is code with very high and sane test coverage. 

## Pair Programming and War on Knowledge Islands

You have knowledge islands in you project when you hear 

* "This feature was worked on by Mr X, he knows how it works" 
* "I know Mr X is on a vacation but we need an urgent fix for this functionality, call him up"

Having knowledge islands in a project is deteremental to the overall delivery speed and cycle. This should ideally not be a problem in agile teams because agile focusses on Collaboration and Communication, but in real world it is still an issue. Teams try things like holding brown bags or common communication channels. Pair programming naturally eliminates this issue. For one, people always work in pairs so it is always two people who know about the low level details of story and implementation. (Book Agile software development)

Pair programming is also coupled with the practice of Pair Rotation. Under this practice, a pair can only continue to work on a story for maximum of 2 days. Post two days, one person moves out to another story and someone earlier working on another story joins this pair. Since one person stays back, the story work is not impacted. The new person joining the pair works hands on the story and builds up knowledge on the work. Another two days and the pair again rotates, this time the person who stayed back last time has to moveout and a new person joins the pair. Essentially

* One person works on the story for a maximum of four days.
* Pairs keep rotating and more that two people build hands on knowledge on the story.

This practice uproot the very problem. This practice also help elevate team bonding and comfort. A goal here is that everyone should pair with everyone and Manager should ensure that is happens. One way to track the health of pairing is by using a Pairing Matrix. For a team of n members, a pairing matrix is a grid sized *n x n* where row and column headers are the team members. For each instance of pairing between two people one bar is added to the corresponding cell. This depicts how often are two people pairing and goal is to have the matrix homogenously filled.
 (Image of Pairing Matrix)

Naturally, such an arrangement of people rotating on on going story is impossible without pairing because delivering value to customer is again the utmost Agile Goal. If the one person working on the story rotates the new person will have to build knowledge on the on going work from start. This is problem is addressed in Pair Programming because one person stays back to ramp up the newly arriving person on pair.

## Pair Programming and Code Reviews


