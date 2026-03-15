---
layout: default
title: Home
---

<section class="hero">
  <h1>Anuj Jamwal</h1>
  <p class="tagline">Software Engineer</p>
</section>

<section class="section">
  <h2>Featured Projects</h2>
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
</section>

<section class="section">
  <h2>Recent Posts</h2>
  <ul class="post-list">
    {% for post in site.posts limit:5 %}
    <li{% if post.draft %} class="draft-item"{% endif %}>
      <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%b %-d, %Y" }}</time>
      <a href="{{ post.url | relative_url }}{% if post.draft %}?include_draft=True{% endif %}">{{ post.title }}</a>
    </li>
    {% endfor %}
  </ul>
</section>
