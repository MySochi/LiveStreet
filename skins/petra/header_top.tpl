<header id="header" role="banner">
	{hook run='header_banner_begin'}

	<ul id="appleNav">
                {if $oUserCurrent}
                	<li>
						<a class="webfonts" title="{$aLang.user_login_submit}">&#0046;</a>
							<ul>
								<li>
									<span class="webfonts">&#0083;</span>
									<span class="strength" title="{$aLang.user_skill}">{$oUserCurrent->getSkill()}</span>
									<span class="webfonts">&#0113;</span>
									<span class="rating {if $oUserCurrent->getRating() < 0}negative{/if}" title="{$aLang.user_rating}">
										{$oUserCurrent->getRating()}
									</span>
							
								</li>
							
								<li>
									<span class="webfonts-menu">&#0056;</span>
									<a href="{router page='talk'}">{$aLang.user_privat_messages}</a>
								</li>
								
								<li>
									<span class="webfonts-menu">&#0061;</span>
									<a href="{$oUserCurrent->getUserWebPath()}favourites/topics/">{$aLang.user_menu_profile_favourites}</a>
								</li> 
								
								<li>
									<span class="webfonts-menu">&#0046;</span>
									<a href="{$oUserCurrent->getUserWebPath()}">{$aLang.footer_menu_user_profile}</a>
								</li>
								
								<li>
									<span class="webfonts-menu">&#094;</span>
									<a href="{router page='settings'}profile/">{$aLang.user_settings}</a>
								</li>

								<li>
									<span class="webfonts-menu">&#0063;</span>
									<a href="{router page='topic'}saved/">{$aLang.topic_menu_saved}</a>
								</li>
								
								<li>
									<span class="webfonts-menu">&#193;</span>
									<a href="{router page='topic'}add/">{$aLang.block_create}</a>
								</li>
								
								<li>
									<span class="webfonts-menu">&#0096;</span>
									<a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}">{$aLang.exit}</a>
								</li>
							</ul>
                	</li>
                {else}
                	<li>
                		<a class="webfonts" href="{router page='login'}" class="js-login-form-show sign-in" title="{$aLang.user_login_submit}">&#094;</a>
                	</li>
                {/if}

                <li {if $sMenuHeadItemSelect=='blog'}class="active"{/if}>
                	<a href="{cfg name='path.root.web'}" title="{$aLang.topic_title}">{$aLang.topic_title}</a>
                </li>

				<li {if $sMenuHeadItemSelect=='blogs'}class="active"{/if}>
					<a href="{router page='blogs'}" title="{$aLang.blogs}">{$aLang.blogs}</a>
				</li>

				<li {if $sMenuHeadItemSelect=='people'}class="active"{/if}>
					<a href="{router page='people'}" title="{$aLang.people}">{$aLang.people}</a>
				</li>

				<li {if $sMenuHeadItemSelect=='stream'}class="active"{/if}>
					<a href="{router page='stream'}" title="{$aLang.stream_menu}">{$aLang.stream_menu}</a>
				</li>

                <li {if $sMenuHeadItemSelect=='qa'}class="active"{/if}>
                	<a href="{router page='qa'}" title="Q&A">Q&A</a>
                </li>

                <li {if $sMenuHeadItemSelect=='companies'}class="active"{/if}>
                	<a href="{router page='companies'}" title="Компании">Компании</a>
                </li>

                <li {if $sMenuHeadItemSelect=='fair'}class="active"{/if}>
                	<a href="{router page='fair'}" title="Базар">Базар</a>
                </li>

                <li>
                    <form action="{router page='search'}topics/">
						<input type="text" placeholder="{$aLang.search}" name="q">
					</form>
                </li>
    </ul>

	{hook run='main_menu'}
	
	
	{hook run='userbar_nav'}
	
	{if $iUserCurrentCountTalkNew}<a href="{router page='talk'}" class="new-messages">+{$iUserCurrentCountTalkNew} <i class="icon-synio-new-message"></i></a>{/if}
	
	
	{hook run='header_banner_end'}
</header>
