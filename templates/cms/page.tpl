{extends file='page.tpl'}

{block name="page_banner"}
    {if $cms.image }
        <img src="{$cms.image}" style="width: 100%;">
    {/if}
{/block}

{block name='page_content_container'}
    <section id="content" class="page-content page-cms page-cms-{$cms.id}">

        {block name='cms_content'}
            {$cms.content nofilter}
        {/block}

        {block name='hook_cms_dispute_information'}
            {hook h='displayCMSDisputeInformation'}
        {/block}

        {block name='hook_cms_print_button'}
            {hook h='displayCMSPrintButton'}
        {/block}

    </section>
{/block}

