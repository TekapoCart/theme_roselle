<div class="block_newsletter col-xs-12 text-xs-center">
    <div class="row">
        <p id="block-newsletter-label" class="col-xs-12 col-sm-3 col-md-5 text-sm-right">
            <img src="{$shop.logo_mail}">
        </p>

        <div class="col-xs-12 col-sm-6 col-md-5">
            <form action="{$urls.pages.index}#footer" method="post">
                <div class="row">
                    <div class="col-xs-12">
                        <input
                                class="btn btn-primary float-xs-right"
                                name="submitNewsletter"
                                type="submit"
                                value="{l s='OK' d='Shop.Theme.Actions'}"
                        >
                        <div class="input-wrapper">
                            <input
                                    name="email"
                                    type="text"
                                    value="{$value}"
                                    placeholder="{l s='Your email address' d='Shop.Forms.Labels'}"
                                    aria-labelledby="block-newsletter-label"
                            >
                        </div>
                        <input type="hidden" name="action" value="0">
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-xs-12">
                        {if $conditions}
                            <p>{$conditions}</p>
                        {/if}
                        {if $msg}
                            <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
                                {$msg}
                            </p>
                        {/if}
                        {if isset($id_module)}
                            {hook h='displayGDPRConsent' id_module=$id_module}
                        {/if}
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>