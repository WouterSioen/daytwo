{*
	variables that are available:
	- {$searchResults}: contains an array with all items, each element contains data about the item
	- {$searchTerm}: the term that has been searched for
*}

<h4>{$lblSearchAgain|ucfirst}</h4>
<div class="clearfix">
	<h2>{$lblSearch|ucfirst}</h2>
	{form:search}
		<div class="oneLiner">
			<p>
				{$txtQ} {$txtQError}
			</p>
			<p>
				<input id="submit" class="inputSubmit" type="submit" name="submit" value="{$lblSearch|ucfirst}" />
			</p>
		</div>
	{/form:search}
</div>

{* don't remove this container nor replace the id - it'll be used to populate the search results live as you type *}
<div id="searchContainer">
	{include:Modules/Search/Layout/Templates/Results.tpl}
</div>