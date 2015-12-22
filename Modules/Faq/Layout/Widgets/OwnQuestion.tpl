{*
	variables that are available:
	- {$widgetFaqOwnQuestion}: true or false depending on if the data can be shown
*}

{option:widgetFaqOwnQuestion}
	<h3 id="{$actOwnQuestion}">{$msgAskOwnQuestion|ucfirst}</h3>
	<div class="bd">
	{option:errorSpam}<div class="message error"><p>{$errOwnQuestionSpam}</p></div>{/option:errorSpam}
	{option:success}<div class="message success"><p>{$msgOwnQuestionSuccess}</p></div>{/option:success}

	{form:own_question}
		<div class="alignBlocks">
			<p{option:txtNameError} class="errorArea"{/option:txtNameError}>
				<label for="name">{$lblYourName|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
				{$txtName} {$txtNameError}
			</p>
			<p{option:txtEmailError} class="errorArea"{/option:txtEmailError}>
				<label for="email">{$lblYourEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
				{$txtEmail} {$txtEmailError}
			</p>
		</div>
		<p class="bigInput{option:txtMessageError} errorArea{/option:txtMessageError}">
			<label for="message">{$lblYourQuestion|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
			{$txtMessage} {$txtMessageError}
		</p>
		<p>
			<input class="inputSubmit" type="submit" name="send" value="{$lblSend|ucfirst}" />
		</p>
	{/form:own_question}
</div>
{/option:widgetFaqOwnQuestion}