<div class="col-md-6 col-lg-6">
  <nav class="simple-menu" id="_desktop_top_menu">
    <ul class="simple-nav">
      {foreach from=$menu.children item=node}
        <li class="{if $node.children|count} has-submenu{/if}">
          <a href="{$node.url}">{$node.label}</a>
          
          {if $node.children|count}
          <div class="submenu">
            <ul>
              {foreach from=$node.children item=submenu}
                <li><a href="{$submenu.url}">{$submenu.label}</a></li>
              {/foreach}
            </ul>
          </div>
          {/if}
        </li>
      {/foreach}
    </ul>
  </nav>
</div>


<!-- Mobile Navbar -->
<div class="mobile-navbar">
  <button id="mobile-menu-toggle">☰</button>
  <div id="mobile-menu" class="mobile-menu">
    <ul class="simple-nav">
      <li><a href="#">New Arrival</a></li>
      <li><a href="#">Essentials</a></li>
      <li><a href="#">Ready to Wear</a></li>
      <li><a href="#">Accessories</a></li>
      <li><a href="#">Outlet</a></li>
    </ul>
  </div>
</div>
