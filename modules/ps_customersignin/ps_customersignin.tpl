<div id="_desktop_user_info">
    <div class="user-info">
        {if $logged}
            <a class="account" href="{$my_account_url}" rel="nofollow"
            ><i class="material-icons logged">person</i><span class="hidden-md-up">&nbsp;&nbsp;{l s='View my customer account' d='Shop.Theme.Customeraccount'}</span></a>
        {else}
            {block name='display_customer_login_link'}
                {hook h='displayCustomerLoginLink'}
            {/block}
        {/if}
    </div>
</div>