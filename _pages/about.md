---
layout: post
title: About The Blacklist
permalink: /about/
content-type: eg
author: Don Gato
---

<section class="about-profile">
  {% if site.profile_pic %}
  <img src="{{ site.profile_pic }}" alt="{{ site.title }}" class="about-avatar" />
  {% endif %}

  {% if site.author_bio %}
  <p>{{ site.author_bio }}</p>
  {% endif %}

  <ul class="list-unstyled">
    {% assign socials = "facebook,spotify,instagram,github,twitter,email" | split: "," %}
    {% for key in socials %}
      {% assign val = site[key] %}
      {% if val %}
        <li class="about-social-item">
          {% if key == "email" %}
            <a href="mailto:{{ val }}">{{ val }}</a>
          {% else %}
            <a href="{{ val }}" target="_blank" rel="noopener noreferrer">
              {{ key | replace: "_", " " | capitalize }}
            </a>
          {% endif %}
        </li>
      {% endif %}
    {% endfor %}
  </ul>
</section>
