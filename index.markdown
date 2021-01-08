---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
title: Home
---

{% for post in site.posts %}
<!-- START: Image Slider -->
<div class="nk-image-slider" data-autoplay="8000">
    <div class="nk-image-slider-item">
        <img src="{{ site.baseurl }}/{{post.image}}" alt="" class="nk-image-slider-img" data-thumb="{{ site.baseurl }}/{{post.image}}">
        <div class="nk-image-slider-content">
            <h3 class="h4">{{ post.title }}</h3>
            <p class="text-white">{{ post.excerpt }}</p>
            <a href="{{ post.url }}" class="nk-btn nk-btn-rounded nk-btn-color-white nk-btn-hover-color-main-1">Lire</a>
        </div>
    </div>
</div>
{% endfor %}

