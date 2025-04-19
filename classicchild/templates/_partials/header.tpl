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
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav iliana-header-nav">
    <div class="container-fluid">
      <div class="row">
        <div class="hidden-sm-down">
          <div class="text-sm-center text-md-center h1 pt-1">
            <a href="{$urls.base_url}">
              <img src="{$urls.theme_assets}img/iliana.PNG" alt="test" style="max-width: 300px; width: 150px;">
            </a>
          </div>
        </div>
        <div class="hidden-md-up text-sm-center mobile">
          <div class="float-xs-right" id="_mobile_cart"></div>
          <div class="float-xs-right" id="_mobile_user_info"></div>
          <div class="top-logo" id="mobile_logo">
            <a href="{$urls.base_url}">
              <img src="{$urls.theme_assets}img/iliana.PNG" alt="test">
            </a>
          </div>
        </div>
        <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top pb-0">
    <div class="container-fluid">
      <div class="row iliana-row">
        <div class="col-md-2 hidden-xl-down" id="_desktop_logo">
            {if $page.page_name == 'index'}
              <h1>
                <a href="{$urls.base_url}">
                  <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
                </a>
              </h1>
            {else}
                <a href="{$urls.base_url}">
                  <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
                </a>
            {/if}
        </div>
        <div class="col-md-11 col-sm-12 position-static">
          <div class="row">
            {widget name="ps_mainmenu"}
            <div class="col-md-6 col-lg-6 text-sm-center text-md-left mx-0">
              <div class="row">
                <div class="col-md-12 text-right hidden-sm-down">
                  {widget name="ps_searchbar"}
                  {widget name="ps_customersignin"}
                  {widget name="ps_shoppingcart"}
                </div>
              </div>
            </div>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
        <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
        <div class="js-top-menu-bottom">
          <div id="_mobile_currency_selector"></div>
          <div id="_mobile_language_selector"></div>
          <div id="_mobile_contact_link"></div>
        </div>
      </div>
    </div>
  </div>
  {hook h='displayNavFullWidth'}
{/block}