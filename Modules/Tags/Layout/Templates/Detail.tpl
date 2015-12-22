{*
	Variables that are available:
	- {$tagsModules}: contains all tags, grouped per module
*}

<article class="article content clearfix">
	<h2>{$lblItemsWithTag|sprintf:{$tag.name}|ucfirst}</h2>
	{option:tagsModules}
		{iteration:tagsModules}
			<h3>{$tagsModules.label}</h3>
			<ul>
				{iteration:tagsModules.items}
					<li><a href="{$tagsModules.items.full_url}">{$tagsModules.items.title}</a></li>
				{/iteration:tagsModules.items}
			</ul>
		{/iteration:tagsModules}
	{/option:tagsModules}
	<p><a href="{$var|geturlforblock:'Tags'}" title="{$lblToTagsOverview|ucfirst}">{$lblToTagsOverview|ucfirst}</a></p>
</acritcle>