---
layout: page
title: Organized by Category
permalink: /categories/
content-type: eg
---

<style>
.category-content a {
    text-decoration: none;
    color: #4183c4;
}

.category-content a:hover {
    text-decoration: underline;
    color: #4183c4;
}
</style>

<main>
    {% for category in site.categories %}
        {%- assign category_name = category | first -%}
        
        {% comment %} {% endcomment %}
        {%- assign category_name_down = category_name | downcase -%}

        {% comment %} {% endcomment %}
        {%- unless category_name_down == 'post' or category_name_down == 'posts' -%}

            <h3 id="{{ category_name }}">{{ category_name | capitalize }}</h3>
            {% for post in category.last %}
                <li class="category-content" style="padding-bottom: 0.6em; list-style: none;"><a href="{{post.url}}">{{ post.title }}</a></li>
            {% endfor %}

        {%- endunless -%}
    {% endfor %}
    <br/>
    <br/>
</main>