{option:widgetBlogRecentArticlesList}
<div class="sidestory content">
	<h2>{$lblRecentArticles|ucfirst}</h2>
	<ul>
		{iteration:widgetBlogRecentArticlesList}
			<li><a href="{$widgetBlogRecentArticlesList.full_url}" title="{$widgetBlogRecentArticlesList.title}">{$widgetBlogRecentArticlesList.title}</a></li>
		{/iteration:widgetBlogRecentArticlesList}
	</ul>
	<p>
		<a href="{$var|geturlforblock:'blog'}">{$lblBlogArchive|ucfirst}</a><span>&nbsp;-&nbsp;</span>
		<a id="RSSfeed" href="{$var|geturlforblock:'blog':'rss'}">{$lblSubscribeToTheRSSFeed|ucfirst}</a>
	</p>
</div>
{/option:widgetBlogRecentArticlesList}