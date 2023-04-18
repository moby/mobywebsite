---
title: Moby
layout: community
---

<section class="contributor-grid flex">
<div class="container">
<h2 class="heading-center">Meet our contributors</h2>
<div class="row">
{% for contributor in site.data.contributors %}
<div class="col">
	<a id="{{contributor}}-url" target="_blank" class="flex-item">
  		<figure>
  			<img id="{{contributor}}-image" />
    		<figcaption>
    			<em class="fa fa-github" aria-hidden="true"></em>
            <span id="{{contributor}}-name"></span>
     		</figcaption>
 		</figure>
 	</a>
</div>
<script>
fetch('https://api.github.com/users/{{contributor}}')
  .then((response) => response.json())
  .then((json) => {
    document.getElementById("{{contributor}}-url").src = json.html_url;
    document.getElementById("{{contributor}}-image").src = json.avatar_url;
    document.getElementById("{{contributor}}-name").innerHTML = json.name;
    });
</script>
{% endfor %}
</div></div></section>

<section class="section-community">
   <div class="container">
      <h2 class="heading-center">What is the community saying?</h2>
      <div class="twitter">
         <a class="twitter-timeline" href="https://twitter.com/moby">Tweets by moby</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
      </div>
   </div>
</section>
<div class="strip-2">
   <div class="container">
    {% include social.html %}
   </div>
</div>