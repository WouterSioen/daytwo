{*
	variables that are available:
	- {$widgetBlogRecentArticlesFull}: contains an array with all posts, each element contains data about the post
*}

{option:widgetBlogRecentArticlesFull}
<div class="sidestory content">
	<h2>{$lblRecentArticles|ucfirst}</h2>
	{iteration:widgetBlogRecentArticlesFull}
		
		<article class="mod article">
			<h3><a href="{$widgetBlogRecentArticlesFull.full_url}" title="{$widgetBlogRecentArticlesFull.title}">{$widgetBlogRecentArticlesFull.title}</a></h3>
			<span class="info">{$msgWrittenBy|ucfirst|sprintf:{$widgetBlogRecentArticlesFull.user_id|usersetting:'nickname'}} - {$widgetBlogRecentArticlesFull.publish_on|date:'F jS, Y'}</span>
			
			<div class="bd content">
				{option:!widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.text}{/option:!widgetBlogRecentArticlesFull.introduction}
				{option:widgetBlogRecentArticlesFull.introduction}{$widgetBlogRecentArticlesFull.introduction}{/option:widgetBlogRecentArticlesFull.introduction}
			</div>
		</article>
		
	{/iteration:widgetBlogRecentArticlesFull}
	<p>
		<a href="{$var|geturlforblock:'blog'}">{$lblBlogArchive|ucfirst}</a><span>&nbsp;-&nbsp;</span>
		<a id="RSSfeed" href="{$var|geturlforblock:'blog':'rss'}">{$lblSubscribeToTheRSSFeed|ucfirst}</a>
	</p>
</div>
{/option:widgetBlogRecentArticlesFull}