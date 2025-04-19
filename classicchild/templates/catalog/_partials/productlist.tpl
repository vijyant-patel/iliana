{assign var=products_to_show value=$products|@array_slice:0:3}

<section class="featured-gallery-wrapper">
  {foreach from=$products_to_show item=product}
    <a href="{$product.url}" class="featured-gallery-img" style="background-image: url('{$product.cover.bySize.home_default.url}');">
        {* <div class="gallery-overlay">
            <h2>{$product.name|truncate:30:'...'}</h2>
        </div> *}
    </a>
  {/foreach}
</section>
