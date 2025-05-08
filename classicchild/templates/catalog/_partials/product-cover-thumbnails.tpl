<div class="images-container">
  <link rel="stylesheet" href="{$urls.theme_assets}css/catalog.css">
  

  {block name='product_images'}
    <div class="gallery-container">
      <div class="thumbnails" id="thumbs">
        {foreach from=$product.images item=image name=imgloop}
            <img
              src="{$image.bySize.home_default.url}"
              class="{if $smarty.foreach.imgloop.first}active{/if}"
            >
        {/foreach}
      </div>
      <div class="dots-container" id="dotsContainer"></div>
      
      <div class="main-image-container" id="imageContainer" style="-ms-overflow-style: none;">
        {foreach from=$product.images item=image}
          <img
            src="{$image.bySize.home_default.url}" style="width:100%;"
          >
      {/foreach}  
      </div>
    </div>

  {/block}

  {block name='product_cover'}

    
  {/block}

</div>
<script src="{$urls.theme_assets}js/catalog.js"></script>
{hook h='displayAfterProductThumbs'}


