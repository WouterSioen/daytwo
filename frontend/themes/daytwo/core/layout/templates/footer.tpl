<footer id="footer">
	<div class="cross" >&nbsp;</div>
	<ul>
		<li >Copyright DayTwo 2010<span class="square"><p>SQUARE</p></span></li>
		{iteration:footerLinks}
			<li{option:footerLinks.selected} class="selected"{/option:footerLinks.selected}>
			<a href="{$footerLinks.url}" title="{$footerLinks.title}"{option:footerLinks.rel} rel="{$footerLinks.rel}"{/option:footerLinks.rel}>
				{$footerLinks.navigation_title}
			</a>
		</li>
		{/iteration:footerLinks}
	</ul>
</footer>