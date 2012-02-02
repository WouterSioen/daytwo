<div class="sidestory">
	<form action="{$var|geturlforblock:'mailmotor':'subscribe'}" method="post">
	<input type="hidden" name="form" value="subscribe" />
	<label for="email">{$lblEmail|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></label>
		<div class="oneLiner mediumInput">
			<p>
				<input type="text" value="" id="email" name="email" class="inputText" />
			</p>
			<p>
				<input id="send" class="inputSubmit" type="submit" name="send" value="{$lblSubscribe|ucfirst}" />
			</p>
		</div>
	</form>
</div>