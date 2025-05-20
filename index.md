---
layout: page
permalink: /
---

### Collect. Connect. Create.

## About {{site.title}}

<h1>Recent Posts</h1>

<ul>
  {% for post in site.posts %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      <span>{{ post.date | date: "%Y-%m-%d" }}</span>
      {% if post.excerpt %}
        <p>{{ post.excerpt }}</p>
      {% endif %}
    </li>
  {% endfor %}
</ul>