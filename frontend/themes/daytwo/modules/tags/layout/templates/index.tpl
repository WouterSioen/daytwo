{*
	variables that are available:
	- {$tags}: contains an array with all tags that are used on the site, each element contains data about the tag
*}

<article class="article clearfix">
	<h2>Tags</h2>
	{option:!tags}<p>{$msgTagsNoItems}</p>{/option:!tags}
	{option:tags}
		<div class="alignBlocks">
			{iteration:tags}
				<a class="button" href="{$var|geturlforblock:'tags':'detail'}/{$tags.url}">{$tags.name}</a>
			{/iteration:tags}
		</div>
	{/option:tags}
</acritcle>