---
layout: page
permalink: /
pagination:
  enabled: true
  per_page: 5
---

<h2>Recent Posts</h2>

<ul class="post-list">
  {% for post in paginator.posts %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      <span>{{ post.date | date: "%Y-%m-%d" }}</span>
      {% if post.excerpt %}
        <p>{{ post.excerpt }}</p>
      {% endif %}
    </li>
  {% endfor %}
</ul>

<nav class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path }}">Previous</a>
  {% endif %}
  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path }}">Next</a>
  {% endif %}
</nav>