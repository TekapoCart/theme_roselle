{extends file='parent:checkout/_partials/footer.tpl'}

{block name='footer'}
  {block name='copyright_link'}
    <div class="text-xs-center copyright">
      Copyright &copy; {$smarty.now|date_format:"%Y"} <a href="{$urls.base_url}" target="_blank">{$shop.name}</a><br>
      Powered with <i class="material-icons">favorite</i> by <a href="https://www.tekapo.io/" target="_blank">TekapoCart</a>
    </div>
  {/block}
{/block}
