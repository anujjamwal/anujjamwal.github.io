---
layout: page
title: Projects
permalink: /projects/
---

<div class="project-grid">
  {% for project in site.projects %}
  <div class="card{% if project.draft %} draft-item{% endif %}">
    <h3><a href="{{ project.url | relative_url }}{% if project.draft %}?include_draft=True{% endif %}">{{ project.title }}</a></h3>
    <p>{{ project.description }}</p>
    {% if project.tags %}
    <div class="card-tags">
      {% for tag in project.tags %}
      <span class="tag">{{ tag }}</span>
      {% endfor %}
    </div>
    {% endif %}
  </div>
  {% endfor %}
</div>
