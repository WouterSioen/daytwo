{*
	variables that are available:
	- {$item}: contains data about the question
	- {$related}: the related items
*}
<div class="content">
	<h2>{$item.question}</h2>
	<ul>
		<li>
			{* Category*}
			<span class="info">{$lblIn|ucfirst} <a href="{$item.category_full_url}" title="{$item.category_title}">{$item.category_title}</a></span>
			{* Tags*}
			{option:item.tags}
				{$lblWith} {$lblThe} {$lblTags}
				{iteration:item.tags}
					<a href="{$item.tags.full_url}" rel="tag" title="{$item.tags.name}">{$item.tags.name}</a>{option:!item.tags.last}, {/option:!item.tags.last}{option:item.tags.last}.{/option:item.tags.last}
				{/iteration:item.tags}
			{/option:item.tags}
		</li>
	</ul>
	
	<p>{$item.answer}</p>
	
	{option:inSameCategory}
		<h3>{$msgQuestionsInSameCategory|ucfirst}</h3>
		<ul>
			{iteration:inSameCategory}
				<li><a href="{$inSameCategory.full_url}" title="{$inSameCategory.question}">{$inSameCategory.question}</a></li>
			{/iteration:inSameCategory}
		</ul>
	{/option:inSameCategory}
	
	{option:related}
		<h3>{$msgRelatedQuestions|ucfirst}</h3>
		<ul>
			{iteration:related}
				<li><a href="{$related.full_url}" title="{$related.question}">{$related.question}</a></li>
			{/iteration:related}
		</ul>
	{/option:related}
	
		<p><a href="{$var|geturlforblock:'faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblToFaqOverview|ucfirst}</a></p>
	
	{option:settings.allow_feedback}
		<h3 id="{$actFeedback}">{$msgFeedback|ucfirst}</h3>
		{option:success}<div class="message success"><p>{$msgFeedbackSuccess}</p></div>{/option:success}
		{option:spam}<div class="message error"><p>{$errFeedbackSpam}</p></div>{/option:spam}
	
		{form:feedback}
			{$hidQuestionId}
			<div class="options">
				<ul class="inputList">
					{iteration:useful}
						<li>
							{$useful.rbtUseful}
							<label for="{$useful.id}">{$useful.label|ucfirst}</label>
						</li>
					{/iteration:useful}
				</ul>
			</div>
	
			<div id="feedbackNoInfo"{option:hideFeedbackNoInfo} style="display: none;"{/option:hideFeedbackNoInfo}>
				<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
					<label for="message">{$msgHowToImprove|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
					{$txtMessage} {$txtMessageError}
				</p>
				<p>
					<input class="inputSubmit" type="submit" name="comment" value="{$lblSend|ucfirst}" />
				</p>
			</div>
		{/form:feedback}
	{/option:settings.allow_feedback}
</div>