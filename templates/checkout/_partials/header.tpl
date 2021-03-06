<div id="roselle-navbar">{* 洛神佈景專用 tag *}
{block name='header_summit'}
{/block}

{block name='header'}
    {block name='header_banner'}
        <div class="header-banner">
            {hook h='displayBanner'}
        </div>
    {/block}
    {block name='header_nav'}
        <nav class="header-nav">
            <div class="container">
                <div class="row hidden-sm-down">{* 只能放 LOGO 跟 主分類 的意思 *}
                    <div class="col-md-9 col-xs-12">
                        {hook h='displayNav1'}
                    </div>
                </div>
            </div>
        </nav>
    {/block}

    {block name='header_top'}
        <div class="navbar-placeholder hidden-md-up"></div>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="hidden-sm-down">{* 只能放 LOGO 跟 主分類 的意思 *}
                        <div class="col-sm-12">
                            {hook h='displayTop'}
                        </div>
                    </div>
                </div>

                {* 手機版 start *}
                <div class="hidden-md-up text-sm-center mobile">
                    <div class="float-xs-left" id="menu-icon">
                        <i class="material-icons d-inline">menu</i>
                    </div>

                    <div class="top-logo" id="_mobile_logo"></div>

                    <div class="clearfix"></div>
                </div>
                {* 手機版 end *}

            </div>
        </div>
    {/block}
{/block}
</div>
<div id="roselle-navbar-placeholder"></div>

<div class="header-bottom">
    {hook h='displayNavFullWidth'}
</div>

{* sidebar start *}
<msc-sidebar id="mobile_top_menu_msc_wrapper" side="left">
    <nav>
        <div class="header">
            <a onclick="(() => {
			document.querySelector('#mobile_top_menu_msc_wrapper').curtainCall();
		})()"><i class="material-icons float-xs-left">close</i></a>
        </div>
        <div class="body">
            <div class="nav__section">
                <!--<h4>{l s='Main menu' d='Shop.Theme.Global'}</h4>-->
                <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
                <!-- 篩選商品 -->
                <div id="_mobile_search_filters"></div>
            </div>
            <div class="nav__section">
                <!--<h4>{l s='Settings' d='Shop.Theme.Global'}</h4>-->
                <div class="js-top-menu-bottom">
                    <div id="_mobile_user_info"></div>
                    <div id="_mobile_language_selector"></div>
                    <div id="_mobile_currency_selector"></div>
                    {hook h='displayNav1'}
                </div>
            </div>
        </div>
    </nav>
</msc-sidebar>
{* sidebar end *}