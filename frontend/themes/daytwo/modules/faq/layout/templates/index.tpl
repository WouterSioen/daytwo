{*
	variables that are available:
	- {$faqCategories}: contains all categories, along with all questions inside a category
*}

<div class="content">
{option:!faqCategories}
	<p>{$msgFaqNoItems}</p>
{/option:!faqCategories}

{option:faqCategories}
	{iteration:faqCategories}
		<h2 id="{$faqCategories.url}"><a href="{$faqCategories.full_url}" title="{$faqCategories.title}">{$faqCategories.title}</a></h2>

		<ul>
			{iteration:faqCategories.questions}
				<li><a href="{$faqCategories.questions.full_url}">{$faqCategories.questions.question}</a></li>
			{/iteration:faqCategories.questions}
		</ul>
	{/iteration:faqCategories}
{/option:faqCategories}
</div>