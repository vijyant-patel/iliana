{if $homeslider.slides}
  <section id="hero-banner-wrapper">
    {foreach from=$homeslider.slides item=slide name='homeslider'}
      {if $smarty.foreach.homeslider.first}
        <div class="hero-banner" style="background-image: url('{$slide.image_url}');">
          <div class="hero-content text-center">
            <h1 class="hero-title">{$slide.title}</h1>
            <p class="hero-subtitle">{$slide.description nofilter}</p>
            <a href="{$slide.url}" class="hero-btn">Explore Now</a>
          </div>
        </div>
      {/if}
    {/foreach}
  </section>
  {/if}  