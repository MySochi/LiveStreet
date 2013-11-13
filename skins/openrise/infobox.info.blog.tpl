<div 	style="background: url('{$oBlog->getAvatarPath(100)}'); width: 100px; height: 100px; border-radius: 7px; -webkit-border-radius: 7px; -moz-border-radius: 7px;"></div><br /><br />

<ul class="blog-info">
	<p class="blog-description">{$oBlog->getDescription()}</p>
</ul>

{if $oTopicLast}
	{$aLang.infobox_blog_topic_last}:<br/>
	<a href="{$oTopicLast->getUrl()}" class="infobox-topic">{$oTopicLast->getTitle()|escape:'html'}</a>
{/if}

<div class="infobox-actions">
	<a href="{$oBlog->getUrlFull()}">{$aLang.infobox_blog_url}</a><br/>
	<a href="{router page='rss'}blog/{$oBlog->getUrl()}/">{$aLang.infobox_blog_rss}</a>
</div>