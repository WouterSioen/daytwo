{*
	variables that are available:
	- {$widgetBlogRecentComments}: contains an array with the recent comments. Each element contains data about the comment.
*}

{option:widgetBlogRecentComments}
<div class="sidestory content">
	<h2>{$lblRecentComments|ucfirst}</h2>
	<ul>
		{iteration:widgetBlogRecentComments}
			<li>
				{option:widgetBlogRecentComments.website}<a href="{$widgetBlogRecentComments.website}" rel="nofollow">{/option:widgetBlogRecentComments.website}
					{$widgetBlogRecentComments.author}
				{option:widgetBlogRecentComments.website}</a>{/option:widgetBlogRecentComments.website}
				<span>&nbsp;{$lblCommentedOn}&nbsp;</span> <a href="{$widgetBlogRecentComments.full_url}">{$widgetBlogRecentComments.post_title}</a>
			</li>
		{/iteration:widgetBlogRecentComments}
	</ul>
</div>
{/option:widgetBlogRecentComments}