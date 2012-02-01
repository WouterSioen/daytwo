{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

{option:searchTerm}
	{option:!searchResults}
			<p>{$msgSearchNoItems}</p>
	{/option:!searchResults}
	{option:searchResults}
		{iteration:searchResults}
			<h2>
				<a href="{$searchResults.full_url}" title="{$searchResults.title}">
					{$searchResults.title}
				</a>
			</h2>
			{option:!searchResults.introduction}{$searchResults.text|truncate:200}{/option:!searchResults.introduction}
			{option:searchResults.introduction}{$searchResults.introduction}{/option:searchResults.introduction}
		{/iteration:searchResults}
	{/option:searchResults}
	{include:core/layout/templates/pagination.tpl}
{/option:searchTerm}