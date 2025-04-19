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
