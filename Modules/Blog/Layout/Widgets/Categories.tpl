{*
	variables that are available:
	- {$widgetBlogCategories}:
*}

{option:widgetBlogCategories}
<div class="sidestory content">
	<h2>{$lblCategories|ucfirst}</h2>
	<ul>
		{iteration:widgetBlogCategories}
			<li><a href="{$widgetBlogCategories.url}" title="{$widgetBlogCategories.label}">{$widgetBlogCategories.label}&nbsp;({$widgetBlogCategories.total})</a></li>
		{/iteration:widgetBlogCategories}
	</ul>
</div>
{/option:widgetBlogCategories}