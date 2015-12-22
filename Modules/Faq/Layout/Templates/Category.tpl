{*
	variables that are available:
	- {$questions}: contains all questions inside this category
*}

<div class="content">
	<h2>{$category.title}</h2>
	{option:questions}
		<ul>
			{iteration:questions}
				<li><a href="{$questions.full_url}">{$questions.question}</a></li>
			{/iteration:questions}
		</ul>
	{/option:questions}

	{option:!questions}
		<p>{$msgNoQuestionsInCategory|ucfirst}</p>
	{/option:!questions}

	<p><a href="{$var|geturlforblock:'Faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblToFaqOverview|ucfirst}</a></p>
</div>