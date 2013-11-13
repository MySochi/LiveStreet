			{hook run='content_end'}
		</div> <!-- /content -->
	</div> <!-- /wrapper -->
	
	<footer id="footer">
		{if $oUserCurrent}
			<ul class="footer-list">
				<li class="footer-list-header word-wrap">{$oUserCurrent->getLogin()}</li>
				<li><a href="{$oUserCurrent->getUserWebPath()}">{$aLang.footer_menu_user_profile}</a></li>
				<li><a href="{router page='settings'}profile/">{$aLang.user_settings}</a></li>
				<li><a href="{router page='topic'}add/" class="js-write-window-show">{$aLang.block_create}</a></li>
				{hook run='footer_menu_user_item' oUser=$oUserCurrent}
				<li><a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}">{$aLang.exit}</a></li>
			</ul>
		{else}
			<ul class="footer-list">
				<li class="footer-list-header word-wrap">{$aLang.footer_menu_user_quest_title}</li>
				<li><a href="{router page='registration'}" class="js-registration-form-show">{$aLang.registration_submit}</a></li>
				<li><a href="{router page='login'}" class="js-login-form-show sign-in">{$aLang.user_login_submit}</a></li>
				{hook run='footer_menu_user_item' isGuest=true}
			</ul>
		{/if}
		
		<ul class="footer-list">
			<li class="footer-list-header">{$aLang.footer_menu_navigate_title}</li>
			<li><a href="{cfg name='path.root.web'}">{$aLang.topic_title}</a></li>
			<li><a href="{router page='blogs'}">{$aLang.blogs}</a></li>
			<li><a href="{router page='people'}">{$aLang.people}</a></li>
			<li><a href="{router page='stream'}">{$aLang.stream_menu}</a></li>
			{hook run='footer_menu_navigate_item'}
		</ul>
		
		
		{* RU: Тут можно добавить свой блок со ссылками, расскоментируйте блок кода ниже и добавьте свои ссылки *}
		{* EN: You can add additional block with links here, just uncomment code below and add your links *}
		
		<ul class="footer-list">
			<li class="footer-list-header">Посты</li>
			<li><a href="{router page='feed'}">Лента</a></li>
			<li><a href="{router page='#'}">Лучшие</a></li>			
			<li><a href="{router page='#'}">Тематические</a></li>			
			<li><a href="{router page='#'}">Корпоративные</a></li>
			<li><a href="{router page='sandbox'}">Песочница</a></li>
			{hook run='footer_menu_project_item'}
		</ul>

		<ul class="footer-list">
			<li class="footer-list-header">Инфо</li>
			<li><a href="{router page='page/info/about'}">О сайте</a></li>
			<li><a href="{router page='help/rules'}">Правила</a></li>			
			<li><a href="{router page='help'}">Помощь</a></li>			
			<li><a href="{router page='page/info/agreement'}">Соглашение</a></li>
			<li><a href="{router page='page/info/stats'}">Статистика</a></li>
			{hook run='footer_menu_project_item'}
		</ul>

		<ul class="footer-list">
			<li class="footer-list-header">Услуги</li>
			<li><a href="{router page='page/services/advertising'}">Реклама</a></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			{hook run='footer_menu_project_item'}
		</ul>
		
		{*
			<ul class="footer-list">
				<li class="footer-list-header">{$aLang.footer_menu_project_title}</li>
				<li><a href="#">{$aLang.footer_menu_project_about}</a></li>
				<li><a href="#">{$aLang.footer_menu_project_contact}</a></li>
				<li><a href="#">{$aLang.footer_menu_project_advert}</a></li>
				<li><a href="#">{$aLang.footer_menu_project_help}</a></li>
				{hook run='footer_menu_project_item'}
			</ul>
		*}

		{literal}
				<script type="text/javascript">
					(function (d, w, c) {
   						(w[c] = w[c] || []).push(function() {
    						    try {
         						w.yaCounter18081880 = new Ya.Metrika({id:18081880, enableAll: true, webvisor:true});
        						} catch(e) { }
    						});
    
    						var n = d.getElementsByTagName("script")[0],
    	   					s = d.createElement("script"),
        					f = function () { n.parentNode.insertBefore(s, n); };
    						s.type = "text/javascript";
    						s.async = true;
    						s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

	    					if (w.opera == "[object Opera]") {
        						d.addEventListener("DOMContentLoaded", f, false);
    						} else { f(); }
					})(document, window, "yandex_metrika_callbacks");
				</script>
				<noscript>
					<div>
						<img src="//mc.yandex.ru/watch/18081880" style="position:absolute; left:-9999px;" alt="" />
					</div>
				</noscript>
		{/literal}
	
		<div class="copyright">
			<ul class="ls-social">
				<li><a href="http://www.facebook.com/LiveStreetCMS" class="ls-social-fb" target="_blank" rel="nofollow"></a></li>
				<li><a href="http://vk.com/livestreetcms" class="ls-social-vk" target="_blank" rel="nofollow"></a></li>
				<li><a href="https://twitter.com/livestreet" class="ls-social-twitter" target="_blank" rel="nofollow"></a></li>
				<li><a href="https://plus.google.com/u/0/115588653488480153707/" class="ls-social-gplus" target="_blank" rel="nofollow"></a></li>
			</ul>
			
			<div class="design-by">
				<a href="http://openrise.org"><img src="http://openrise.s3.amazonaws.com/data/images/openrise.png" alt="Open Rise Сommunity" /></a>
				<a href="http://xeoart.com"><img src="http://urbanpet.s3.amazonaws.com/upet/images/xeoart.png" alt="xeoart" /></a>
			</div>

			<div class="design-by">{hook run='copyright'}<br>© 2011&#8211;2013 <a href="#">ЗАО «Зел Корп»</div>
		</div>
		
		{hook run='footer_end'}
	</footer>
</div>

{include file='toolbar.tpl'}

{hook run='body_end'}

</body>
</html>