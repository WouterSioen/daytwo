{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}

{option:!items}
		<a href="{$var|geturlforblock:'blog':'rss'}" class="img" >BLOG</a>
		<p>{$msgBlogNoItems}</p>
{/option:!items}
{option:items}
	<a href="{$var|geturlforblock:'blog':'rss'}" class="img" >Subscribe to RSS feed</a>
	{iteration:items}
		<article class="article">

			{* Title *}
			<h2><a href="{$items.full_url}" title="{$items.title}">{$items.title}</a></h2>

			{* Info about post *}

			<span class="info">{$msgWrittenBy|ucfirst|sprintf:{$items.user_id|usersetting:'nickname'}} - {$items.publish_on|date:'F jS, Y'}
				<a href="{$items.full_url}#{$actComment}">
					<span class="commentImg"><p></p></span>
					{$items.comments_count}
				</a>
				
				{* Category*}
				{$lblIn} <a href="{$items.category_full_url}" title="{$items.category_title}">{$items.category_title}</a>
			</span>

			{* Content *}
			<div class="inner">
				{option:items.image}<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$items.image}" alt="{$items.title}" />{/option:items.image}
				{option:!items.introduction}{$items.text}{/option:!items.introduction}
				{option:items.introduction}{$items.introduction}{/option:items.introduction}
			</div>

			{* Tags *}

			{option:items.tags}
				<ul class="tags">
					<li class="listhead">Tags<span class="square"><p>SQUARE</p></span></li>
					{iteration:items.tags}
						<li><a href="{$items.tags.full_url}" rel="tag" title="{$items.tags.name}">{$items.tags.name}</a></li>{option:!items.tags.last}, {/option:!items.tags.last}
					{/iteration:items.tags}
				</ul>
			{/option:items.tags}

		</article>
	{/iteration:items}
	{include:core/layout/templates/pagination.tpl}
{/option:items}
