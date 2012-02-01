{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<div id="container" class="innerpage">
			<header id="header">
			
				{* Logo *}
				<div id="logo">
					<h1><a href="/">{$siteTitle}</a></h1>
				</div>
				
				{* Navigation *}
				<nav id="navigation">
					{$var|getnavigation:'page':0:1}
				</nav>

		</header>
		
		<div id="main">
		
			{* Main column *}
			<div id="mainColumn">
				<div id="blog">
					{* Main position *}
					{iteration:positionMain}
						{* Main position *}
						{option:positionMain.blockIsHTML}
							<article class="article content">
								{$positionMain.blockContent}
							</article>
						{/option:positionMain.blockIsHTML}
						{option:!positionMain.blockIsHTML}
							{$positionMain.blockContent}
						{/option:!positionMain.blockIsHTML}
					{/iteration:positionMain}
					<div class="cutCorner"><p>cut of corner</p></div>
				</div>
			</div>

			{* Right column *}
			<div id="column">
				{* Right position *}
				{iteration:positionRight}
					{$positionRight.blockContent}
				{/iteration:positionRight}
			</div>

		</div>
		
		<noscript>
			<div class="message notice">
				<h4>{$lblEnableJavascript|ucfirst}</h4>
				<p>{$msgEnableJavascript}</p>
			</div>
		</noscript>
		
		{include:core/layout/templates/footer.tpl}
		
	</div>

	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}
	
	{* Site wide HTML *}
	{$siteHTMLFooter}

</body>
</html>