{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{* <div class="col-md-6 links">
  <div class="row">
  {foreach $linkBlocks as $linkBlock}
    <div class="col-md-6 wrapper">
      <p class="h3 hidden-sm-down">{$linkBlock.title}</p>
      {assign var=_expand_id value=10|mt_rand:100000}
      <div class="title clearfix hidden-md-up" data-target="#footer_sub_menu_{$_expand_id}" data-toggle="collapse">
        <span class="h3">{$linkBlock.title}</span>
        <span class="float-xs-right">
          <span class="navbar-toggler collapse-icons">
            <i class="material-icons add">&#xE313;</i>
            <i class="material-icons remove">&#xE316;</i>
          </span>
        </span>
      </div>
      <ul id="footer_sub_menu_{$_expand_id}" class="collapse">
        {foreach $linkBlock.links as $link}
          <li>
            <a
                id="{$link.id}-{$linkBlock.id}"
                class="{$link.class}"
                href="{$link.url}"
                title="{$link.description}"
                {if !empty($link.target)} target="{$link.target}" {/if}
            >
              {$link.title}
            </a>
          </li>
        {/foreach}
      </ul>
    </div>
  {/foreach}
  </div>
</div> *}
<div class="col-md-4 links">
  <div class="row">
    <div class="col-md-12 wrapper">
      <p class="h3 hidden-sm-down">Static Block Title 1</p>
      <div class="title clearfix hidden-md-up" data-target="#footer_sub_menu_1" data-toggle="collapse">
        <span class="h3">Static Block Title 1</span>
        <span class="float-xs-right">
          <span class="navbar-toggler collapse-icons">
            <i class="material-icons add">&#xE313;</i>
            <i class="material-icons remove">&#xE316;</i>
          </span>
        </span>
      </div>
      <ul id="footer_sub_menu_1" class="collapse">
        <li>
          <a id="link-1-1" class="link-class" href="https://example.com/page1" title="Description 1">
            Link Title 1
          </a>
        </li>
        <li>
          <a id="link-1-2" class="link-class" href="https://example.com/page2" title="Description 2">
            Link Title 2
          </a>
        </li>
      </ul>
    </div>
  </div>
</div>