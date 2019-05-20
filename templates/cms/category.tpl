{extends file='page.tpl'}

{block name='page_title'}
    {$cms_category.name}
{/block}

{block name='page_content_container'}
  <section id="content" class="page-content page-category page-category-{$cms_category.id}">

  {if $cms_category.description }
    <div class="cms-category-desc">{$cms_category.description}</div>
  {/if}

  {block name='page_content'}
    {block name='cms_sub_categories'}
      {if $sub_categories}
        <div class="cms-subcategory-list grid" data-colcade="columns: .grid-col, items: .grid-item">
          <div class="grid-col grid-col--1"></div>
          <div class="grid-col grid-col--2"></div>
          <div class="grid-col grid-col--3"></div>
          <div class="grid-col grid-col--4"></div>
          {foreach from=$sub_categories item=sub_category}
          <div class="grid-item">
            <a href="{$sub_category.link}">
              {if isset($sub_category.image)}<img src="{$sub_category.image}">{/if}
              <div class="cms-subcategory-title">{$sub_category.name}</div>
              {if $sub_category.meta_description}<div class="cms-subcategory-desc">{$sub_category.meta_description|truncate:70:'...'}</div>{/if}
            </a>
          </div>
          {/foreach}
        </div>
      {/if}
    {/block}

    {block name='cms_sub_pages'}
      {if $cms_pages}
        <div class="cms-page-list grid" data-colcade="columns: .grid-col, items: .grid-item">
          <div class="grid-col grid-col--1"></div>
          <div class="grid-col grid-col--2"></div>
          <div class="grid-col grid-col--3"></div>
          <div class="grid-col grid-col--4"></div>
          {foreach from=$cms_pages item=cms_page}
          <div class="grid-item">
            <a href="{$cms_page.link}">
              {if isset($cms_page.image)}<img src="{$cms_page.image}">{/if}
              <div class="cms-page-title">{$cms_page.meta_title}</div>
              {if $cms_page.meta_description}<div class="cms-page-desc">{$cms_page.meta_description|truncate:70:'...'}</div>{/if}
            </a>
          </div>
          {/foreach}
        </div>
      {/if}
    {/block}

  {/block}

  </section>
{/block}





