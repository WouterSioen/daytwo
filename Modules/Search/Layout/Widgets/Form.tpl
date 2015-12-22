<div class="sidestory">
	<h2>{$lblSearch|ucfirst}</h2>
	{form:search}
		<div class="oneLiner">
			<p>
				{$txtQWidget}
			</p>
			<p>
				<input id="submit" class="inputSubmit" type="submit" name="submit" value="{$lblSearch|ucfirst}" />
			</p>
		</div>
	{/form:search}
</div>