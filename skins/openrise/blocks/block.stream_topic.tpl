<ul class="latest-list">
	{foreach from=$oTopics item=oTopic name="cmt"}
		{assign var="oUser" value=$oTopic->getUser()}							
		{assign var="oBlog" value=$oTopic->getBlog()}
		
		<li class="js-title-topic" title="{$oTopic->getText()|strip_tags|trim|truncate:150:'...'|escape:'html'}">
			<a class="circle" href="{$oUser->getUserWebPath()}" title="{$oUser->getLogin()}"><img src="{$oUser->getProfileAvatarPath(48)}" class="avatar" alt="avatar"></a>
			<div class="information">
				<!-- <a href="{$oUser->getUserWebPath()}" class="user">{$oUser->getLogin()}</a> &rarr; -->
				<a href="{$oBlog->getUrlFull()}" class="stream-blog">{$oBlog->getTitle()|escape:'html'}</a> &rarr;
				<a href="{$oTopic->getUrl()}" class="topic-title">{$oTopic->getTitle()|escape:'html'}</a><br>
				<span class="date">
					<time datetime="{date_format date=$oTopic->getDateAdd() format='c'}" title="{date_format date=$oTopic->getDateAdd() format="j F Y, H:i"}">
						{date_format date=$oTopic->getDateAdd() hours_back="12" minutes_back="60" now="60" day="day H:i" format="j F Y"}
					</time>
				</span>
				<span class="block-item-comments"><i class="icon-synio-comments-small"></i>{$oTopic->getCountComment()}</span>
			</div>
		</li>
	{/foreach}
</ul>


<footer>
	<a href="{router page='index'}new/">{$aLang.block_stream_topics_all}</a> · <a href="{router page='rss'}new/">RSS</a>
</footer>
					