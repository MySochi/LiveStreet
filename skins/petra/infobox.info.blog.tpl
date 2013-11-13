<img src="{$oBlog->getAvatarPath(100)}" alt="avatar" class="avatar" />

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