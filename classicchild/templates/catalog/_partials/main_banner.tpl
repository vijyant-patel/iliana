<div class="main-banner" id="top">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-6">
        <div class="left-content">
          <div class="thumb">
            <div class="inner-content">
              <h4>We Are Hexashop</h4>
              <span>Awesome, clean &amp; creative HTML5 Template</span>
              <div class="main-border-button">
                <a href="#">Purchase Now!</a>
              </div>
            </div>
            <img src="assets/images/left-banner-image.jpg" alt="">
          </div>
        </div>
      </div>

      <div class="col-lg-6">
        <div class="right-content">
          <div class="row">
            {foreach from=$categories item=cat name=categories}
              <div class="col-lg-6">
                <div class="right-first-image">
                  <div class="thumb">
                    <div class="inner-content">
                      <h4>{$cat.label}</h4>
                      <span>Best Clothes For {$cat.label}</span>
                    </div>
                    <div class="hover-content">
                      <div class="inner">
                        <h4>{$cat.label}</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <div class="main-border-button">
                          <a href="{$cat.url}">Discover More</a>
                        </div>
                      </div>
                    </div>

                    <!-- Dynamically fetch the category image or a placeholder image -->
                    <img src="{$link->getCatImageLink($cat.page_identifier, $cat.id_category)|default:'https://via.placeholder.com/300x300'}" alt="{$cat.label}">
                  </div>
                </div>
              </div>
            {/foreach}
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
