<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="UTF-8"/>
<title>首页 - 宠物屋</title>

<meta name="keywords" content="首页" />
<meta name="description" content="首页 " />
<meta name="generator" content="Discuz! X3.2" />
<meta name="author" content="POSHMAX" />
<meta name="copyright" content="2001-2019 zengsong.org" />
<meta name="MSSmartTagsPreventParsing" content="True" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<!--  <base href="http://localhost:8080/PuppyHouse/" />-->
<link rel="shortcut icon" href="../images/icon.ico"/>
<link rel="stylesheet" type="text/css" href="css/style_common.css" />
<script type="text/javascript">
	var STYLEID = '9', STATICURL = 'static/', IMGDIR = 'static/image/common', VERHASH = 'Wzc', charset = 'gbk', discuz_uid = '0', cookiepre = 'crMW_2132_', cookiedomain = '', cookiepath = '/', showusercard = '1', attackevasive = '0', disallowfloat = 'newthread', creditnotice = '2|金钱|', defaultstyle = '', REPORTURL = 'aHR0cDovL3d3dy56ZW5nc29uZy5vcmcv', SITEURL = 'http://www.zengsong.org/', JSPATH = 'static/js/', CSSPATH = 'data/cache/style_', DYNAMICURL = '';
</script>
<script src="js/common.js" type="text/javascript"></script>
<meta http-equiv="X-UA-Compatible" content="IE=6" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<script language="javascript" type="text/javascript">
<!--
	if (top.location != self.location)
		top.location = self.location;
// -->
</script>
<script language="javascript" type="text/javascript">
	function killErrors() {
		return true;
	}
	window.onerror = killErrors;
</script>
<meta name="application-name" content="宠物赠送网-公益网站" />
<meta name="msapplication-tooltip" content="宠物赠送网-公益网站" />
<meta name="msapplication-task"
	content="name=首页;action-uri=http://www.zengsong.org/portal.php;icon-uri=http://www.zengsong.org/static/image/common/portal.ico" />
<meta name="msapplication-task"
	content="name=宠物赠送;action-uri=http://www.zengsong.org/forum.php;icon-uri=http://www.zengsong.org/static/image/common/bbs.ico" />
<meta name="msapplication-task"
	content="name=同城群组;action-uri=http://www.zengsong.org/group.php;icon-uri=http://www.zengsong.org/static/image/common/group.ico" />
<script src="js/potral.js" type="text/javascript"></script>
<script src="../js/jquery-1.10.0.js" type="text/javascript"></script>
<script src="js/phv2_common.js" type="text/javascript"></script>
<script type="text/javascript">
	var tpldir = './template/lionmo_winter';
</script>

<script type="text/javascript">
	var jq = jQuery.noConflict();
</script>

</head>

<body id="nv_portal" class="pg_index" onkeydown="if(event.keyCode==27) return false;">
	<div id="append_parent">
		<div id="phv2_login_wrap" style="display: none">
			<div id="phv2_login">
				<h3 class="flb" id="fctrl_login" style="cursor: move;">
					<em id="returnmessage_LKJFp" fwin="login">用户登录</em>
					<span> <a href="javascript:;" class="flbc" onclick="hideWin('phv2_login_wrap')" title="关闭">关闭</a></span>			
				</h3>
				
				<form method="post" action="user_Login" autocomplete="off" name="login" id="loginform_LRcax" class="cl" onsubmit="return check()" fwin="login">
					<div class="c cl">
						<input type="hidden" name="formhash" value="8c93e84a">
						<input type="hidden" name="referer" value="http://www.zengsong.org/">
						<div class="rfm">
							<table>
								<tbody>
									<tr>
										<th><label for="username_LRcax">用户名:</label></th>
										<td>
											<input type="text" name="LoginName" id="username_LRcax" autocomplete="off" size="30" class="px p_fre" tabindex="1" value="" fwin="login">
										</td>
										<td class="tipcol"><a href="member.php?mod=register">立即注册</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					<div class="rfm">
						<table>
							<tbody>
								<tr>
									<th><label for="password3_LRcax">密码:</label></th>
									<td><input type="password" id="password3_LRcax" name="LoginPwd" onfocus="clearpwd()" size="30" class="px p_fre" tabindex="1" fwin="login"></td>
									<td class="tipcol"><a href="javascript:;" onclick="display('layer_login_LRcax');display('layer_lostpw_LRcax');" title="找回密码">找回密码</a></td>
								</tr>
							</tbody>
						</table>
					</div>
					<span class="errorMsg"><s:fielderror/></span>
					<div class="rfm" id="loginanswer_row_LRcax" style="display:none" fwin="login">
						<table>
							<tbody>
								<tr>
									<th>答案:</th>
										<td><input type="text" name="answer" id="loginanswer_LRcax" autocomplete="off" size="30" class="px p_fre" tabindex="1" fwin="login"></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="login_btn">
						<table width="100%">
							<tbody>
							<tr>
								<!-- <th>&nbsp;</th> -->
									<td><input type="submit" class="pn pnc" id="login_btn" value="登录" name="loginsubmit" tabindex="1"/>
									</td> 
									<!--<td><div class="pn pnc" id="login_btn" value="登录">登录</div></td>-->
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="ajaxwaitid"></div>

	<div id="qmenu_menu" class="p_pop blk" style="display: none;">
		<div class="ptm pbw hm">
			请 <a href="javascript:;" class="xi2" onclick="lsSubmit()"><strong>登录</strong></a>
			后使用快捷导航<br />没有帐号？<a href="member.php?mod=register" class="xi2 xw1">立即注册</a>
		</div>
		<div id="fjump_menu" class="btda"></div>
	</div>
	<div class="bottombg">

		<!-- topnav -->

		<div id="wp_toptb" class="cl">

			<div class="wp cl topll">

				<div class="z">
					<a href="http://www.zengsong.org/"
						onclick="addFavorite(this.href, '宠物赠送网-公益网站');return false;">收藏本站</a><!--  --><a
						href="http://www.bbtall.com" target="_blank">蹦蹦跳商城</a><a
						href="http://www.bbtall.com/bbs" target="_blank">宠物百科</a>
					<script type="text/javascript">
						var _speedMark = new Date();
					</script>
					<!-- <a rel="nofollow" id="jakyge_zanzhu1" href="javascript:;"
						onmouseover="showWindow(this.id,'plugin.php?id=jakyge_zanzhu')"><font
						color="#FF0000">赞助我们</font></a> -->
				</div>


				<div class="y">

					<div class="z">
						<div class="fastlg_fm y"
							style="margin-right: 10px; padding-right: 10px">
							<!--  <p>
								<a
									href="http://www.zengsong.org/connect.php?mod=login&op=init&referer=index.php&statfrom=login_simple"><img
									src="static/image/common/qq_login.gif" class="vm" alt="QQ登录" /></a>
							</p>
							<p class="hm xg1" style="padding-top: 2px;">只需一步，快速开始</p>-->
						</div>
					</div>
					<s:if test="#session.user==null">
			    		<!-- <a href="javascript:;"
							onClick="showWin('phv2_login_wrap')" title="登录">登录</a> -->
						<a href="sign_in.html" title="登录">登录</a>
						<span class="wi_tpipe">|</span> 
						<a href="sign_up.html" title="立即注册">立即注册</a> 
						
						<!--<span class="wi_tpipe">|</span>  <a href="javascript:;" onClick="showWindow('login', 'member.php?mod=logging&action=login&viewlostpw=1')"
						title="找回密码">找回密码</a> -->
			    	</s:if>
			    	<s:if test="#session.user!=null">
			    		<a href="userDetail.jsp" target="_blank">${sessionScope.user.trueName }</a>
						<span class="wi_tpipe">|</span> 
		                <a href="user_Logout">注销</a>
					</s:if>
				</div>

			</div>

		</div>


		<!--切换风格-->

		<div id="wist_menu" class="wi_pop" style="display: none;">

			<ul class="wi_skin cl">

				<li onClick="extstyle('')" title="时尚酷黑"><i></i></li>


			</ul>

		</div>

		<!-- /topnav -->

		<div id="hd">
			<div class="wp11">
				<div class="hdc cl">

					<h2>
						<a href="http://www.zengsong.org/" title="宠物赠送网-公益网站"><!-- <img
							src="template/lionmo_winter/image/logo.png" alt="宠物赠送网-公益网站"
							border="0" /> --></a>
					</h2>
					<div id="scbar" class="cl">
						<form id="scbar_form" method="post" autocomplete="off"
							onsubmit="searchFocus($('scbar_txt'))"
							action="search.php?searchsubmit=yes" target="_blank">
							<input type="hidden" name="mod" id="scbar_mod" value="search" />
							<input type="hidden" name="formhash" value="a0c170c8" /> <input
								type="hidden" name="srchtype" value="title" /> <input
								type="hidden" name="srhfid" value="0" /> <input type="hidden"
								name="srhlocality" value="portal::index" />
							<table cellspacing="0" cellpadding="0">
								<tr>
									<td class="scbar_icon_td"></td>
									<td class="scbar_txt_td"><input type="text" name="srchtxt"
										id="scbar_txt" value="请输入搜索内容" autocomplete="off"
										x-webkit-speech speech /></td>

									<td class="scbar_btn_td"><button type="submit"
											name="searchsubmit" id="scbar_btn" sc="1" class="pn pnc"
											value="true">
											<strong class="xi2">搜索</strong>
										</button></td>
								</tr>
								<tr>
									<td class="scbar_hot_td">
										<div id="scbar_hot">
											<strong class="xw1">热搜: </strong> <a
												href="search.php?mod=forum&amp;srchtxt=%BB%EE%B6%AF&amp;formhash=a0c170c8&amp;searchsubmit=true&amp;source=hotsearch"
												target="_blank" class="xi2" sc="1">活动</a> <a
												href="search.php?mod=forum&amp;srchtxt=%BD%BB%D3%D1&amp;formhash=a0c170c8&amp;searchsubmit=true&amp;source=hotsearch"
												target="_blank" class="xi2" sc="1">交友</a> <a
												href="search.php?mod=forum&amp;srchtxt=discuz&amp;formhash=a0c170c8&amp;searchsubmit=true&amp;source=hotsearch"
												target="_blank" class="xi2" sc="1">discuz</a>

										</div>
									</td>

								</tr>
							</table>
						</form>
					</div>
					<ul id="scbar_type_menu" class="p_pop" style="display: none;">
						<li><a href="javascript:;" rel="article">文章</a></li>
						<li><a href="javascript:;" rel="forum" class="curtype">帖子</a></li>
						<li><a href="javascript:;" rel="group">同城群组</a></li>
						<li><a href="javascript:;" rel="user">用户</a></li>
					</ul>
					<script type="text/javascript">
						initSearchmenu('scbar', '');
					</script>
					<ul class="p_pop h_pop" id="plugin_menu" style="display: none">
						<li><a href="plugin.php?id=dc_signin:dc_signin"
							id="mn_plink_dc_signin">每日签到</a></li>
					</ul>


				</div>

				<!-- 导航 -->
				<div id="wi_wrap">
					<div id="nv">


						<ul>
							<li class="xnv_1 a xnv_a1" id="mn_portal"><a
								href="index.jsp" hidefocus="true"
								title="Portal">首页<span>Portal</span></a></li>
							<li class="xnv_2" id="mn_forum"><a
								href="http://www.zengsong.org/forum.php" hidefocus="true"
								title="BBS" style="font-weight: bold;color: yellow">宠物赠送<span>BBS</span></a></li>
							<li class="xnv_3" id="mn_N9ec7"><a
								href="http://www.zengsong.org/forum.php" hidefocus="true"
								target="_blank" style="font-weight: bold;color: yellow">宠物领养</a></li>
							<li class="xnv_4" id="mn_N7b5a"><a
								href="plugin.php?id=waterfall:waterfall" hidefocus="true">美宠美图</a></li>
							<li class="xnv_5" id="mn_group"><a
								href="http://www.zengsong.org/group.php" hidefocus="true"
								title="Group">同城群组<span>Group</span></a></li>
							<li class="xnv_6" id="mn_P2"><a
								href="http://www.zengsong.org/cwzixun/" hidefocus="true"
								target="_blank">资讯</a></li>
							<li class="xnv_7" id="mn_forum_11"><a
								href="http://www.zengsong.org/forum.php?mod=collection"
								hidefocus="true" title="Collection">淘帖<span>Collection</span></a></li>





						</ul>
						<script src="template/lionmo_winter/image/nv.js"
							type="text/javascript"></script>
					</div>
				</div>
				<!-- 导航 -->


			</div>




			<div class="p_pop h_pop" id="mn_userapp_menu" style="display: none"></div>
			<div id="mu" class="cl"></div>
		</div>





		<script type="text/javascript">
			go();
		</script>


		<div id="wp" class="wp">
			<div class="wpmain">
				<style id="diy_style" type="text/css"></style>
				<div class="wp">

					<!--[diy=diy1]-->
					<div id="diy1" class="area">
						<div id="frameZB7305" class="frame move-span cl frame-1">
							<div id="frameZB7305_left" class="column frame-1-c">
								<div id="frameZB7305_left_temp" class="move-span temp"></div>
								<div id="portal_block_203" class="syhdp block move-span">
									<div id="portal_block_203_content" class="dxb_bc">
										<div class="slidebox">
											<ul class="slideshow">
												<li style="width: 1123px; height: 425px;"><a
													href="http://www.szpetfair.com/" target="_blank"><img
														src="data/attachment/block/99/998f4f051fba71413c9c08c98634b567.jpg"
														width="1123" height="425" /></a><span class="title"><p
															class="bt">站长支持，公益活动，免费试吃申请@美图</p>
														<p class="nr"></P></span></li>
												<li style="width: 1123px; height: 425px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=653"
													target="_blank"><img
														src="data/attachment/block/c8/c80d8eceef9b32f30f832b4a34973a68.jpg"
														width="1123" height="425" /></a><span class="title"><p
															class="bt">狗狗被主人丢弃在十字路口淋雨，画面凄凉@</p>
														<p class="nr">狗狗被主人丢弃在十字路口淋雨，画面凄凉，背后的原因后让人痛心 很多人认为这个</P></span></li>
												<li style="width: 1123px; height: 425px;"><a
													href="http://www.sdpa.net.cn" target="_blank"><img
														src="data/attachment/block/38/387a62c413a8d50b9c9a272ae9f6679f.jpg"
														width="1123" height="425" /></a><span class="title"><p
															class="bt">深圳市犬类保护协会@美图</p>
														<p class="nr">深圳市犬类保护协会第二十三届领养日活动在西丽领养点进行，约30名志愿者参与此活动
														</P></span></li>
												<li style="width: 1123px; height: 425px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=651"
													target="_blank"><img
														src="http://ww2.sinaimg.cn/mw690/e8cecb19gw1f4l9sskkcmg20a005fhdv.gif"
														width="1123" height="425" /></a><span class="title"><p
															class="bt">请支持领养代替购买，我虽然没有名贵的血统</p>
														<p class="nr">不喜欢田园猫不喜欢中华犬，你想去宠物店买只漂亮的小猫小狗。你推开宠物店的门，</P></span></li>
											</ul>
											<div class="slidebar" mevent="mouseover">
												<div class="spic">
													<p>
														<a href="http://www.szpetfair.com/" target="_blank"><img
															src="data/attachment/block/99/998f4f051fba71413c9c08c98634b567.jpg"
															width="143" height="50" /></a>
													</p>
												</div>
												<div class="spic">
													<p>
														<a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=653"
															target="_blank"><img
															src="data/attachment/block/c8/c80d8eceef9b32f30f832b4a34973a68.jpg"
															width="143" height="50" /></a>
													</p>
												</div>
												<div class="spic">
													<p>
														<a href="http://www.sdpa.net.cn" target="_blank"><img
															src="data/attachment/block/38/387a62c413a8d50b9c9a272ae9f6679f.jpg"
															width="143" height="50" /></a>
													</p>
												</div>
												<div class="spic">
													<p>
														<a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=651"
															target="_blank"><img
															src="http://ww2.sinaimg.cn/mw690/e8cecb19gw1f4l9sskkcmg20a005fhdv.gif"
															width="143" height="50" /></a>
													</p>
												</div>
											</div>
										</div>
										<script type="text/javascript">
											runslideshow();
										</script>
									</div>
								</div>
							</div>
						</div>
						<div id="framed4Buyz" class="sybjtj frame move-span cl frame-2-1">
							<div id="framed4Buyz_left" class="column frame-2-1-l">
								<div id="framed4Buyz_left_temp" class="move-span temp"></div>
								<div id="portal_block_204" class="bjtj block move-span">
									<div class="blocktitle title">
										<span class="titletext"
											style="float:;margin-left:px;font-size:18px;color: !important;">编辑推荐</span><span
											class="subtitle"
											style="float:right;margin-right:px;font-size:"><a
											href="#" target="_blank" style="color: !important;">+MORE</a></span>
									</div>
									<div id="portal_block_204_content" class="dxb_bc">
										<div class="module cl xld">
											<dl class="cl">
												<dd class="m">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
														target="_blank"><img
														src="data/attachment/block/0a/0aa27ea27f00775e8b471768c69aaa71.jpg"
														width="125" height="105" alt="有谁要领养萨摩耶？" /></a>
												</dd>
												<dd class="t">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
														title="有谁要领养萨摩耶？" target="_blank">有谁要领养萨摩耶？</a>
												</dd>
												<dd class="aut">
													<em class="y xg1 xw0"><a
														href="http://www.zengsong.org/home.php?mod=space&uid=11154"
														target="_blank"><span>加加</span></a><span>|</span><span>1027人浏览</span><span>|</span><span>3人回复</span></em>
												</dd>
												<dd class="nr">
													因个人原因，无法继续养，这是女狗狗，3岁半，不怕陌生人，很爱吃东西，未做绝育，未</dd>
											</dl>
											<dl class="cl">
												<dd class="m">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
														target="_blank"><img
														src="data/attachment/block/96/969d9d1f30439147bbb509c29f19943b.jpg"
														width="125" height="105"
														alt="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它" /></a>
												</dd>
												<dd class="t">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
														title="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它"
														target="_blank">本人有一只西施犬，因家庭原因没有办法好好</a>
												</dd>
												<dd class="aut">
													<em class="y xg1 xw0"><a
														href="http://www.zengsong.org/home.php?mod=space&uid=11380"
														target="_blank"><span>与过磅</span></a><span>|</span><span>313人浏览</span><span>|</span><span>1人回复</span></em>
												</dd>
												<dd class="nr">本人有一只西施犬，想帮他找一户好人家，本人是在湛江市赤坎区的，有意者请联系
													:1831</dd>
											</dl>
											<dl class="cl">
												<dd class="m">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
														target="_blank"><img
														src="data/attachment/block/2f/2f19414e453b6d9f9763922a437d2857.jpg"
														width="125" height="105" alt="蓝猫代养" /></a>
												</dd>
												<dd class="t">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
														title="蓝猫代养" target="_blank">蓝猫代养</a>
												</dd>
												<dd class="aut">
													<em class="y xg1 xw0"><a
														href="http://www.zengsong.org/home.php?mod=space&uid=11159"
														target="_blank"><span>岁月神偷</span></a><span>|</span><span>367人浏览</span><span>|</span><span>4人回复</span></em>
												</dd>
												<dd class="nr">家养英短纯种蓝猫 喜欢猫猫的主人下方留言哦</dd>
											</dl>
											<dl class="cl">
												<dd class="m">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
														target="_blank"><img
														src="data/attachment/block/28/28b8af363ded4dfd4f2b8fe275bcb67a.jpg"
														width="125" height="105" alt="工作原因无偿赠送一只小狗" /></a>
												</dd>
												<dd class="t">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
														title="工作原因无偿赠送一只小狗" target="_blank">工作原因无偿赠送一只小狗</a>
												</dd>
												<dd class="aut">
													<em class="y xg1 xw0"><a
														href="http://www.zengsong.org/home.php?mod=space&uid=11214"
														target="_blank"><span>凹凸曼</span></a><span>|</span><span>526人浏览</span><span>|</span><span>1人回复</span></em>
												</dd>
												<dd class="nr">
													懂事，知道不在家里尿尿，尿尿的时候会哼唧扒门，现在是每天下午7点左右会出门尿，希</dd>
											</dl>
											<dl class="cl">
												<dd class="m">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
														target="_blank"><img
														src="data/attachment/block/8b/8bc04d9225a7140a6350856af99c2169.jpg"
														width="125" height="105" alt="可怜小猫求领养" /></a>
												</dd>
												<dd class="t">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
														title="可怜小猫求领养" target="_blank">可怜小猫求领养</a>
												</dd>
												<dd class="aut">
													<em class="y xg1 xw0"><a
														href="http://www.zengsong.org/home.php?mod=space&uid=6915"
														target="_blank"><span>Q逼</span></a><span>|</span><span>157人浏览</span><span>|</span><span>1人回复</span></em>
												</dd>
												<dd class="nr"></dd>
											</dl>
											<dl class="cl">
												<dd class="m">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
														target="_blank"><img
														src="data/attachment/block/2b/2b61587691a7fe4b7bd9252a017615d7.jpg"
														width="125" height="105" alt="免费赠送小梗犬，求爱狗人士领养" /></a>
												</dd>
												<dd class="t">
													<a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
														title="免费赠送小梗犬，求爱狗人士领养" target="_blank">免费赠送小梗犬，求爱狗人士领养</a>
												</dd>
												<dd class="aut">
													<em class="y xg1 xw0"><a
														href="http://www.zengsong.org/home.php?mod=space&uid=11353"
														target="_blank"><span>怪爷爷</span></a><span>|</span><span>229人浏览</span><span>|</span><span>1人回复</span></em>
												</dd>
												<dd class="nr">
													这是两周前在路边遛狗时跟着回家的小狗狗。母的，非常亲人，但是发烧了，有点没精神。</dd>
											</dl>
										</div>
									</div>
								</div>
								<div id="portal_block_205" class="jctw block move-span">
									<div class="blocktitle title">
										<span class="titletext"
											style="float:;margin-left:px;font-size:;color: !important;">精彩图文</span>
									</div>
									<div id="portal_block_205_content" class="dxb_bc">
										<div class="module cl slidebox" slidenum="3" slidestep="3">
											<div class="leftbtn slidebarup">
												<a href="javascript:void(0);" mevent="click"><</a>
											</div>
											<div class="rightbtn slidebardown ">
												<a href="javascript:void(0);" mevent="click">></a>
											</div>
											<ul class="slideshow">
												<li style="width: 251px; height: 207px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
													target="_blank"><img
														src="data/attachment/block/e3/e318d866972d70aa93188ceb6b3f292b.jpg"
														width="251" height="207" /></a><span class="title">有谁要领养萨摩耶？</span></li>
												<li style="width: 251px; height: 207px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
													target="_blank"><img
														src="data/attachment/block/2a/2a85ce18c4fe8492e62ee1e1eb050ddf.jpg"
														width="251" height="207" /></a><span class="title">本人有一只西施犬，因家庭原因没有办法好好</span></li>
												<li style="width: 251px; height: 207px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
													target="_blank"><img
														src="data/attachment/block/69/692c7defa6991cdbf9aee45499fca152.jpg"
														width="251" height="207" /></a><span class="title">蓝猫代养</span></li>
												<li style="width: 251px; height: 207px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
													target="_blank"><img
														src="data/attachment/block/a2/a2d9fa0428bd4574c16b3899df2c7012.jpg"
														width="251" height="207" /></a><span class="title">工作原因无偿赠送一只小狗</span></li>
												<li style="width: 251px; height: 207px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
													target="_blank"><img
														src="data/attachment/block/c4/c4faa5bf1bae55af16051a90ea57771b.jpg"
														width="251" height="207" /></a><span class="title">可怜小猫求领养</span></li>
												<li style="width: 251px; height: 207px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
													target="_blank"><img
														src="data/attachment/block/f4/f4fddd7b52f40a569908dae07a4a7a7a.jpg"
														width="251" height="207" /></a><span class="title">免费赠送小梗犬，求爱狗人士领养</span></li>
											</ul>
										</div>
										<script type="text/javascript">
											runslideshow();
										</script>
									</div>
								</div>
							</div>
							<div id="framed4Buyz_center" class="column frame-2-1-r">
								<div id="framed4Buyz_center_temp" class="move-span temp"></div>
								<div id="portal_block_211" class="gzwm block move-span">
									<div class="blocktitle title">
										<span class="titletext"
											style="float:;margin-left:px;font-size:;color: !important;">关注我们</span>
									</div>
									<div id="portal_block_211_content" class="dxb_bc">
										<div class="portal_block_summary">
											<div class="gzwm">
												<ul class="top1">
													<li class="xlwb"><a target="_blank"
														href="http://www.zengsong.org/saoma.html"><img
															src="template/lionmo_winter/image/weibo.png" /></a>
														<p class="wenzi">
															<a target="_blank"
																href="http://www.zengsong.org/saoma.html">新浪微博</a>
														</p></li>
													<li class="gfwx"><a target="_blank"
														href="http://www.zengsong.org/saoma.html"><img
															src="template/lionmo_winter/image/weixin.png" /></a>
														<p class="wenzi">
															<a target="_blank"
																href="http://www.zengsong.org/saoma.html">官方微信</a>
														</p></li>
													<li><a target="_blank"
														href="http://www.zengsong.org/saoma.html"><img
															src="template/lionmo_winter/image/dingyue.png" /></a>
														<p class="wenzi">
															<a target="_blank"
																href="http://www.zengsong.org/saoma.html">加QQ群</a>
														</p></li>
												</ul>

												<ul class="top2">
													<li class="djqd"><a href="plugin.php?id=dc_signin">点击签到</a></li>
													<li class="fbiao"><a
														onclick="showWindow('nav', this.href, 'get', 0)"
														href="forum.php?mod=misc&amp;action=nav">发表帖子</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div id="portal_block_212" class="rtph block move-span">
									<div class="blocktitle title">
										<span class="titletext"
											style="float:;margin-left:px;font-size:;color: !important;">热帖排行</span>
									</div>
									<div id="portal_block_212_content" class="dxb_bc">
										<div class="module cl xl xl1">
											<ul>
												<li class="rr1"><span class="shunx">1</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
													title="有谁要领养萨摩耶？" target="_blank">有谁要领养萨摩耶？</a></li>
												<li class="rr2"><span class="shunx">2</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
													title="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它"
													target="_blank">本人有一只西施犬，因家庭原因没有办法好好</a></li>
												<li class="rr3"><span class="shunx">3</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
													title="蓝猫代养" target="_blank">蓝猫代养</a></li>
												<li class="rr4"><span class="shunx">4</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1581"
													title="求哈" target="_blank">求哈</a></li>
												<li class="rr5"><span class="shunx">5</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1608"
													title="8个月哈士奇求领养" target="_blank">8个月哈士奇求领养</a></li>
												<li class="rr6"><span class="shunx">6</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1607"
													title="谁有比熊崽也可以" target="_blank">谁有比熊崽也可以</a></li>
												<li class="rr7"><span class="shunx">7</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
													title="工作原因无偿赠送一只小狗" target="_blank">工作原因无偿赠送一只小狗</a></li>
												<li class="rr8"><span class="shunx">8</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
													title="可怜小猫求领养" target="_blank">可怜小猫求领养</a></li>
												<li class="rr9"><span class="shunx">9</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
													title="免费赠送小梗犬，求爱狗人士领养" target="_blank">免费赠送小梗犬，求爱狗人士领养</a></li>
												<li class="rr10"><span class="shunx">10</span><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1589"
													title="有偿领养”豆豆”" target="_blank">有偿领养”豆豆”</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="frameo0UAau" class="frame move-span cl frame-1">
							<div id="frameo0UAau_left" class="column frame-1-c">
								<div id="frameo0UAau_left_temp" class="move-span temp"></div>
							</div>
						</div>
						<div id="frameHvPyU0" class="sybjtj frame move-span cl frame-2-1">
							<div id="frameHvPyU0_left" class="column frame-2-1-l">
								<div id="frameHvPyU0_left_temp" class="move-span temp"></div>
							</div>
							<div id="frameHvPyU0_center" class="column frame-2-1-r">
								<div id="frameHvPyU0_center_temp" class="move-span temp"></div>
							</div>
						</div>
					</div>
					<!--[/diy]-->
					<!--[diy=diy2]-->
					<div id="diy2" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy3]-->
					<div id="diy3" class="area">
						<div id="framep949st" class="frame move-span cl frame-1">
							<div id="framep949st_left" class="column frame-1-c">
								<div id="framep949st_left_temp" class="move-span temp"></div>
								<div id="portal_block_206" class="ad_01 block move-span">
									<div id="portal_block_206_content" class="dxb_bc">
										<div class="portal_block_summary">
											<!--  <a href="http://www.zengsong.org" target="_blank"><img
												src="data/attachment/portal/201706/13/203112b2cqshcb4tffo2ts.jpg"
												width="100%" /></a>-->
										</div>
									</div>
								</div>
								<div id="frameu25g4I" class="frame move-span cl frame-2-1">
									<div id="frameu25g4I_left" class="column frame-2-1-l">
										<div id="frameu25g4I_left_temp" class="move-span temp"></div>
										<div id="portal_block_207" class="newartycle block move-span">
											<div class="blocktitle title">
												<span class="titletext">最新赠送</span><span
													style="float: right;" class="subtitle"><a
													style="color: rgb(0, 0, 0) !important;" href="#"
													target="_blank">+MORE</a></span>
											</div>
											<div id="portal_block_207_content" class="dxb_bc">
												<div class="module cl xld">
													<dl class="cl1">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
																target="_blank"><img
																src="data/attachment/block/1d/1d1e492f3e1111bc9420e8b7aa56002d.jpg"
																width="263" height="198"
																alt="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它" /></a>
														</dd>
														<dd class="type">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
																title="广东省" target="_blank">广东省</a>
														</dd>
														<dd class="t">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
																title="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它"
																target="_blank">本人有一只西施犬，因家庭原因没有办法好好</a>
														</dd>
														<dd class="sum">
															本人有一只西施犬，想帮他找一户好人家，本人是在湛江市赤坎区的，有意者请联系 :18316635980 余生</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11380"
																target="_blank"><span>发表于：2017-07-20</span> <span>
																		作者：与过磅</span> <span> 阅读：313</span> <span> 评论：1</span></a></em>
														</dd>
														<dd class="xx">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
																target="_blank">详细阅读</a>
														</dd>
													</dl>
													<dl class="cl2">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
																target="_blank"><img
																src="data/attachment/block/a6/a6d18d65cf6ea3d6a2acb788d8ff1d4e.jpg"
																width="263" height="198" alt="免费赠送小梗犬，求爱狗人士领养" /></a>
														</dd>
														<dd class="type">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
																title="北京市" target="_blank">北京市</a>
														</dd>
														<dd class="t">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
																title="免费赠送小梗犬，求爱狗人士领养" target="_blank">免费赠送小梗犬，求爱狗人士领养</a>
														</dd>
														<dd class="sum">
															这是两周前在路边遛狗时跟着回家的小狗狗。母的，非常亲人，但是发烧了，有点没精神。我带她去医院全面检查，打了退烧针后无碍，无皮肤病，对疾病有抗性，但不是很强，说明之前打过疫苗但有点久了。医生说小狗大概1
														</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11353"
																target="_blank"><span>发表于：2017-07-19</span> <span>
																		作者：怪爷爷</span> <span> 阅读：227</span> <span> 评论：1</span></a></em>
														</dd>
														<dd class="xx">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
																target="_blank">详细阅读</a>
														</dd>
													</dl>
													<dl class="cl3">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
																target="_blank"><img
																src="data/attachment/block/94/9441a3d221beebe35e1cae1162aee265.jpg"
																width="263" height="198" alt="可怜小猫求领养" /></a>
														</dd>
														<dd class="type">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
																title="四川省" target="_blank">四川省</a>
														</dd>
														<dd class="t">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
																title="可怜小猫求领养" target="_blank">可怜小猫求领养</a>
														</dd>
														<dd class="sum"></dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=6915"
																target="_blank"><span>发表于：2017-07-17</span> <span>
																		作者：Q逼</span> <span> 阅读：157</span> <span> 评论：1</span></a></em>
														</dd>
														<dd class="xx">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
																target="_blank">详细阅读</a>
														</dd>
													</dl>
													<dl class="cl4">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
																target="_blank"><img
																src="data/attachment/block/32/32632eb490047467b36af64d75868887.jpg"
																width="263" height="198" alt="蓝猫代养" /></a>
														</dd>
														<dd class="type">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
																title="广东省" target="_blank">广东省</a>
														</dd>
														<dd class="t">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
																title="蓝猫代养" target="_blank">蓝猫代养</a>
														</dd>
														<dd class="sum">家养英短纯种蓝猫 喜欢猫猫的主人下方留言哦</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11159"
																target="_blank"><span>发表于：2017-07-17</span> <span>
																		作者：岁月神偷</span> <span> 阅读：367</span> <span> 评论：4</span></a></em>
														</dd>
														<dd class="xx">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
																target="_blank">详细阅读</a>
														</dd>
													</dl>
													<dl class="cl5">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1591"
																target="_blank"><img
																src="data/attachment/block/2e/2e6ebe542c0d97ed2428f01371251f70.jpg"
																width="263" height="198" alt="1个月黄毛小鸭求包养" /></a>
														</dd>
														<dd class="type">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1591"
																title="上海市" target="_blank">上海市</a>
														</dd>
														<dd class="t">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1591"
																title="1个月黄毛小鸭求包养" target="_blank">1个月黄毛小鸭求包养</a>
														</dd>
														<dd class="sum">超级可爱活泼 很好养 附送笼子 求好心人士 地址上海浦东唐镇</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11263"
																target="_blank"><span>发表于：2017-07-16</span> <span>
																		作者：yue13212</span> <span> 阅读：1045</span> <span> 评论：0</span></a></em>
														</dd>
														<dd class="xx">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1591"
																target="_blank">详细阅读</a>
														</dd>
													</dl>
													<dl class="cl6">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1589"
																target="_blank"><img
																src="data/attachment/block/2d/2dd6cbce47757d880e3dcd20371179ec.jpg"
																width="263" height="198" alt="有偿领养”豆豆”" /></a>
														</dd>
														<dd class="type">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1589"
																title="广东省" target="_blank">广东省</a>
														</dd>
														<dd class="t">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1589"
																title="有偿领养”豆豆”" target="_blank">有偿领养”豆豆”</a>
														</dd>
														<dd class="sum">这是表姐家的爱犬，因刚生下小宝宝，家人觉得现在不适宜养狗狗
															希望有喜欢的加微信--- kam520333 注：有偿领养</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11159"
																target="_blank"><span>发表于：2017-07-14</span> <span>
																		作者：岁月神偷</span> <span> 阅读：2427</span> <span> 评论：4</span></a></em>
														</dd>
														<dd class="xx">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1589"
																target="_blank">详细阅读</a>
														</dd>
													</dl>
													<dl class="cl7">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
																target="_blank"><img
																src="data/attachment/block/be/bebc85d6b617b84d3c1d3c7ff82bb4ad.jpg"
																width="263" height="198" alt="工作原因无偿赠送一只小狗" /></a>
														</dd>
														<dd class="type">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
																title="湖北省" target="_blank">湖北省</a>
														</dd>
														<dd class="t">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
																title="工作原因无偿赠送一只小狗" target="_blank">工作原因无偿赠送一只小狗</a>
														</dd>
														<dd class="sum">
															懂事，知道不在家里尿尿，尿尿的时候会哼唧扒门，现在是每天下午7点左右会出门尿，希望接收的人年龄在20-30之间，微信：zikaousb。狗贩子不要来，求你了
														</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11214"
																target="_blank"><span>发表于：2017-07-13</span> <span>
																		作者：凹凸曼</span> <span> 阅读：526</span> <span> 评论：1</span></a></em>
														</dd>
														<dd class="xx">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
																target="_blank">详细阅读</a>
														</dd>
													</dl>
													<dl class="cl8">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
																target="_blank"><img
																src="data/attachment/block/c4/c438f1bbb04a68ecd699d1ef7d12b80d.jpg"
																width="263" height="198" alt="有谁要领养萨摩耶？" /></a>
														</dd>
														<dd class="type">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
																title="广东省" target="_blank">广东省</a>
														</dd>
														<dd class="t">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
																title="有谁要领养萨摩耶？" target="_blank">有谁要领养萨摩耶？</a>
														</dd>
														<dd class="sum">
															因个人原因，无法继续养，这是女狗狗，3岁半，不怕陌生人，很爱吃东西，未做绝育，未生过狗狗，身体健康，求有养狗经验，家人支持的人领养，我在广州白云区，想领养的加我微信13416100190
														</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11154"
																target="_blank"><span>发表于：2017-07-13</span> <span>
																		作者：加加</span> <span> 阅读：1025</span> <span> 评论：3</span></a></em>
														</dd>
														<dd class="xx">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
																target="_blank">详细阅读</a>
														</dd>
													</dl>
													<div class="zixun">
														<a href="http://www.zengsong.org/forum.php"><span
															class="tp"></span></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="frameu25g4I_center" class="column frame-2-1-r">
										<div id="frameu25g4I_center_temp" class="move-span temp"></div>
										<div id="portal_block_216" class="jhzt block move-span">
											<div class="blocktitle title">
												<span class="titletext"
													style="float:;margin-left:px;font-size:;color: !important;">精华主题</span>
											</div>
											<div id="portal_block_216_content" class="dxb_bc">
												<div class="module cl slidebox" slidermun="1" sliderstep="1">
													<ul class="slideshow">
														<li style="width: 287px; height: 188px;"><a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
															target="_blank"><img
																src="data/attachment/block/83/83bcf77ecffe57196f5a84c91e966b65.jpg"
																width="287" height="188" /></a></li>
														<li style="width: 287px; height: 188px;"><a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
															target="_blank"><img
																src="data/attachment/block/c0/c07f83bb7661c6e4177fec516462eb3c.jpg"
																width="287" height="188" /></a></li>
														<li style="width: 287px; height: 188px;"><a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
															target="_blank"><img
																src="data/attachment/block/04/04012d8f700da138ac411592c02098a7.jpg"
																width="287" height="188" /></a></li>
														<li style="width: 287px; height: 188px;"><a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
															target="_blank"><img
																src="data/attachment/block/61/61e49af1bdb8ccd9055ccffe332dce8a.jpg"
																width="287" height="188" /></a></li>
														<li style="width: 287px; height: 188px;"><a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
															target="_blank"><img
																src="data/attachment/block/64/641f9526f9bec63bd2f4941a713ff13d.jpg"
																width="287" height="188" /></a></li>
														<li style="width: 287px; height: 188px;"><a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
															target="_blank"><img
																src="data/attachment/block/16/16253a187393cee597804b359c1664f0.jpg"
																width="287" height="188" /></a></li>
														<li style="width: 287px; height: 188px;"><a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1589"
															target="_blank"><img
																src="data/attachment/block/89/89331d39287404ff410fd9bd130da3f0.jpg"
																width="287" height="188" /></a></li>
														<li style="width: 287px; height: 188px;"><a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1580"
															target="_blank"><img
																src="data/attachment/block/8a/8a0c7aa1b676e8771e95c9764baef24a.jpg"
																width="287" height="188" /></a></li>
														<li style="width: 287px; height: 188px;"><a
															href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1470"
															target="_blank"><img
																src="data/attachment/block/64/6465a8b7daf273eb49cfecfa22452d5a.jpg"
																width="287" height="188" /></a></li>
													</ul>
													<div class="bignews_btns">
														<ul class="btns ">
															<li><span>[广东省]</span><a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
																target="_blank">有谁要领养萨摩耶？</a></li>
															<li><span>[广东省]</span><a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
																target="_blank">本人有一只西施犬，因家庭原因</a></li>
															<li><span>[广东省]</span><a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
																target="_blank">蓝猫代养</a></li>
															<li><span>[湖北省]</span><a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
																target="_blank">工作原因无偿赠送一只小狗</a></li>
															<li><span>[四川省]</span><a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
																target="_blank">可怜小猫求领养</a></li>
															<li><span>[北京市]</span><a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
																target="_blank">免费赠送小梗犬，求爱狗人士领</a></li>
															<li><span>[广东省]</span><a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1589"
																target="_blank">有偿领养”豆豆”</a></li>
															<li><span>[广东省]</span><a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1580"
																target="_blank">免费领养-----深圳龙岗区</a></li>
															<li><span>[北京市]</span><a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1470"
																target="_blank">博美弟弟求收养</a></li>
														</ul>
													</div>

												</div>
												<script type="text/javascript">
													runslideshow();
												</script>
											</div>
										</div>
										<div id="portal_block_209" class="zxft block move-span">
											<div class="blocktitle title">
												<span class="titletext"
													style="float:;margin-left:px;font-size:;color: !important;">最新发帖</span>
											</div>
											<div id="portal_block_209_content" class="dxb_bc">
												<div class="module cl xld xlda">
													<dl class="cl1">
														<dd class="m">
															<a
																href="http://www.zengsong.org/home.php?mod=space&uid=11154"
																c="1" target="_blank"><img
																src="http://www.zengsong.org/uc_server/avatar.php?uid=11154&size=small"
																width="40" height="40" alt="加加" /></a>
														</dd>
														<dd class="atu">
															<a
																href="http://www.zengsong.org/home.php?mod=space&uid=11154"
																target="_blank">加加</a>
														</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11154"
																target="_blank"><span>发表：2017-07-13</span><span>
																		1021人阅读</span><span> 3人评论</span></a></em>
														</dd>
														<dd class="nr">
															<p>
																<a
																	href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
																	title="有谁要领养萨摩耶？" target="_blank">
																	因个人原因，无法继续养，这是女狗狗，3岁半，不怕陌生人，很爱吃东西，未做绝育，未 </a>
															</p>
														</dd>
													</dl>
													<dl class="cl2">
														<dd class="m">
															<a
																href="http://www.zengsong.org/home.php?mod=space&uid=11380"
																c="1" target="_blank"><img
																src="http://www.zengsong.org/uc_server/avatar.php?uid=11380&size=small"
																width="40" height="40" alt="与过磅" /></a>
														</dd>
														<dd class="atu">
															<a
																href="http://www.zengsong.org/home.php?mod=space&uid=11380"
																target="_blank">与过磅</a>
														</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11380"
																target="_blank"><span>发表：2017-07-20</span><span>
																		312人阅读</span><span> 1人评论</span></a></em>
														</dd>
														<dd class="nr">
															<p>
																<a
																	href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
																	title="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它"
																	target="_blank">
																	本人有一只西施犬，想帮他找一户好人家，本人是在湛江市赤坎区的，有意者请联系 :1831 </a>
															</p>
														</dd>
													</dl>
													<dl class="cl3">
														<dd class="m">
															<a
																href="http://www.zengsong.org/home.php?mod=space&uid=11159"
																c="1" target="_blank"><img
																src="http://www.zengsong.org/uc_server/avatar.php?uid=11159&size=small"
																width="40" height="40" alt="岁月神偷" /></a>
														</dd>
														<dd class="atu">
															<a
																href="http://www.zengsong.org/home.php?mod=space&uid=11159"
																target="_blank">岁月神偷</a>
														</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11159"
																target="_blank"><span>发表：2017-07-17</span><span>
																		367人阅读</span><span> 4人评论</span></a></em>
														</dd>
														<dd class="nr">
															<p>
																<a
																	href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
																	title="蓝猫代养" target="_blank"> 家养英短纯种蓝猫 喜欢猫猫的主人下方留言哦
																</a>
															</p>
														</dd>
													</dl>
													<dl class="cl4">
														<dd class="m">
															<a
																href="http://www.zengsong.org/home.php?mod=space&uid=11188"
																c="1" target="_blank"><img
																src="http://www.zengsong.org/uc_server/avatar.php?uid=11188&size=small"
																width="40" height="40" alt="哈士奇热爱者" /></a>
														</dd>
														<dd class="atu">
															<a
																href="http://www.zengsong.org/home.php?mod=space&uid=11188"
																target="_blank">哈士奇热爱者</a>
														</dd>
														<dd class="z">
															<em class="y xg1 xw0"><a
																href="http://www.zengsong.org/home.php?mod=space&uid=11188"
																target="_blank"><span>发表：2017-07-12</span><span>
																		85人阅读</span><span> 1人评论</span></a></em>
														</dd>
														<dd class="nr">
															<p>
																<a
																	href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1581"
																	title="求哈" target="_blank"> 求好心人给只哈 </a>
															</p>
														</dd>
													</dl>
												</div>
											</div>
										</div>
										<div id="portal_block_215" class="activity block move-span">
											<div class="blocktitle title">
												<span class="titletext"
													style="float:;margin-left:px;font-size:;color: !important;">热门活动</span>
											</div>
											<div id="portal_block_215_content" class="dxb_bc">
												<div class="module cl xld">
													<dl class="cl1">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
																target="_blank"><img
																src="data/attachment/block/b1/b167b2e239ce21dbe89b09735b9b9f90.jpg"
																width="100" height="88" alt="有谁要领养萨摩耶？" /></a>
														</dd>
														<dd class="jj">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
																title="有谁要领养萨摩耶？" target="_blank">
																因个人原因，无法继续养，这是女狗狗，3岁半，不怕陌生人，很爱吃东西，未做绝育，未 </a>
														</dd>

														<dd class="bb">报名截止：2017-07-13</dd>
														<dd class="tu">
															<a herf="#">我要报名</a>
														</dd>
													</dl>
													<dl class="cl2">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
																target="_blank"><img
																src="data/attachment/block/e4/e45583c6a6d495303e9a9ba2dc6288d7.jpg"
																width="100" height="88"
																alt="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它" /></a>
														</dd>
														<dd class="jj">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
																title="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它"
																target="_blank">
																本人有一只西施犬，想帮他找一户好人家，本人是在湛江市赤坎区的，有意者请联系 :1831 </a>
														</dd>

														<dd class="bb">报名截止：2017-07-20</dd>
														<dd class="tu">
															<a herf="#">我要报名</a>
														</dd>
													</dl>
													<dl class="cl3">
														<dd class="m">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
																target="_blank"><img
																src="data/attachment/block/db/dbc01b0e961a7cd545f9278e721ee454.jpg"
																width="100" height="88" alt="蓝猫代养" /></a>
														</dd>
														<dd class="jj">
															<a
																href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
																title="蓝猫代养" target="_blank"> 家养英短纯种蓝猫 喜欢猫猫的主人下方留言哦
															</a>
														</dd>

														<dd class="bb">报名截止：2017-07-17</dd>
														<dd class="tu">
															<a herf="#">我要报名</a>
														</dd>
													</dl>
												</div>
											</div>
										</div>
										<div id="portal_block_208" class="ad2 block move-span">
											<div id="portal_block_208_content" class="dxb_bc">
												<div class="portal_block_summary">
													<embed
														src='http://player.youku.com/player.php/sid/XOTIwOTc3NzI4/v.swf'
														allowFullScreen='true' quality='high' width='285'
														height='285' align='middle' allowScriptAccess='always'
														type='application/x-shockwave-flash'></embed>
												</div>
											</div>
										</div>
										<div id="portal_block_210" class="rmbk block move-span">
											<div class="blocktitle title">
												<span class="titletext">热门地区</span>
											</div>
											<div id="portal_block_210_content" class="dxb_bc">
												<div class="portal_block_summary">
													<table width="287" border="1">
														<tr>
															<td><a
																href="http://www.zengsong.org/forum.php?mod=forumdisplay&fid=71">北京市</a></td>
															<td><a
																href="http://www.zengsong.org/forum.php?mod=forumdisplay&fid=81">上海市</a>
															</td>
														</tr>
														<tr>
															<td><a
																href="http://www.zengsong.org/forum.php?mod=forumdisplay&fid=74">天津市</a>
															</td>
															<td><a
																href="http://www.zengsong.org/forum.php?mod=forumdisplay&fid=80">湖南省</a>
															</td>
														</tr>
														<tr>
															<td><a
																href="http://www.zengsong.org/forum.php?mod=forumdisplay&fid=87">广东省</a>
															</td>
															<td><a
																href="http://www.zengsong.org/forum.php?mod=forumdisplay&fid=94">
																	四川省</a></td>
														</tr>
														<tr>
															<td><a
																href="http://www.zengsong.org/forum.php?mod=forumdisplay&fid=95">
																	贵州省</a></td>
															<td><a href="http://www.zengsong.org/forum.php">
																	更多...</a></td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="frameB83kOB" class="frame move-span cl frame-1">
							<div id="frameB83kOB_left" class="column frame-1-c">
								<div id="frameB83kOB_left_temp" class="move-span temp"></div>
								<div id="portal_block_213" class="kjtk block move-span">
									<div class="blocktitle title">
										<span class="titletext">赠宠图库</span><span style="float: right;"
											class="subtitle"><a
											style="color: rgb(0, 0, 0) !important;" href="#"
											target="_blank">+MORE</a></span>
									</div>
									<div id="portal_block_213_content" class="dxb_bc">
										<div class="module cl ml">
											<ul>
												<li style="width: 271px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
													target="_blank"><img
														src="data/attachment/block/5e/5efb5e4871c62d5759532a356f8d736e.jpg"
														width="271" height="212" alt="有谁要领养萨摩耶？" /></a> <span
													class="bt"><a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1586"
														title="有谁要领养萨摩耶？" target="_blank">有谁要领养萨摩耶？</a></span></li>
												<li style="width: 271px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
													target="_blank"><img
														src="data/attachment/block/53/53bc6e287e68bd51c941806a860a8a1f.jpg"
														width="271" height="212"
														alt="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它" /></a> <span
													class="bt"><a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1606"
														title="本人有一只西施犬，因家庭原因没有办法好好照顾，希望找一户好人家可以善待它"
														target="_blank">本人有一只西施犬，因家庭原因没有办法好好</a></span></li>
												<li style="width: 271px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
													target="_blank"><img
														src="data/attachment/block/4a/4a7e74add7ccaf2af03d2a87e10c43d5.jpg"
														width="271" height="212" alt="蓝猫代养" /></a> <span class="bt"><a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1597"
														title="蓝猫代养" target="_blank">蓝猫代养</a></span></li>
												<li style="width: 271px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
													target="_blank"><img
														src="data/attachment/block/9f/9fedab3780723a7407173ca41c98b6eb.jpg"
														width="271" height="212" alt="工作原因无偿赠送一只小狗" /></a> <span
													class="bt"><a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1588"
														title="工作原因无偿赠送一只小狗" target="_blank">工作原因无偿赠送一只小狗</a></span></li>
												<li style="width: 271px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
													target="_blank"><img
														src="data/attachment/block/26/2665038a5c6c4af8c11730ae6226ca1c.jpg"
														width="271" height="212" alt="可怜小猫求领养" /></a> <span
													class="bt"><a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1598"
														title="可怜小猫求领养" target="_blank">可怜小猫求领养</a></span></li>
												<li style="width: 271px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
													target="_blank"><img
														src="data/attachment/block/04/04dd1330992c112940ba3a46174572f9.jpg"
														width="271" height="212" alt="免费赠送小梗犬，求爱狗人士领养" /></a> <span
													class="bt"><a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1603"
														title="免费赠送小梗犬，求爱狗人士领养" target="_blank">免费赠送小梗犬，求爱狗人士领养</a></span>
												</li>
												<li style="width: 271px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1589"
													target="_blank"><img
														src="data/attachment/block/4d/4d2dafa5224558a027982517976a6b9a.jpg"
														width="271" height="212" alt="有偿领养”豆豆”" /></a> <span
													class="bt"><a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1589"
														title="有偿领养”豆豆”" target="_blank">有偿领养”豆豆”</a></span></li>
												<li style="width: 271px;"><a
													href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1580"
													target="_blank"><img
														src="data/attachment/block/d9/d90719e61e27067e970325f26825d411.jpg"
														width="271" height="212" alt="免费领养-----深圳龙岗区" /></a> <span
													class="bt"><a
														href="http://www.zengsong.org/forum.php?mod=viewthread&tid=1580"
														title="免费领养-----深圳龙岗区" target="_blank">免费领养-----深圳龙岗区</a></span>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="frameduLnR5" class="frame move-span cl frame-1">
							<div id="frameduLnR5_left" class="column frame-1-c">
								<div id="frameduLnR5_left_temp" class="move-span temp"></div>
								<div id="portal_block_214" class="yqlj block move-span">
									<div class="blocktitle title">
										<span class="titletext"
											style="float:;margin-left:px;font-size:;color: !important;">友情链接</span><span
											class="subtitle"
											style="float:right;margin-right:px;font-size:"><a
											href="#" target="_blank" style="color: !important;">+申请链接</a></span>
									</div>
									<div id="portal_block_214_content" class="dxb_bc">
										<div class="x cl">
											<ul class="cl mbm">
												<li class="l1"><a href="http://www.bbtall.com"
													target="_blank">宠物蹦蹦跳</a></li>
												<li class="l2"><a href="http://www.cat3dog4.com"
													target="_blank">猫三狗四</a></li>
												<li class="l3"><a href="http://www.hlyok.com"
													target="_blank">茶杯犬</a></li>
												<li class="l4"><a href="http://www.paiduoge.com"
													target="_blank">派多格宠物用品</a></li>
												<li class="l5"><a href="http://www.poshmax.cn"
													target="_blank">普诗玛策划</a></li>
												<li class="l6"><a href="http://www.poshmax.com"
													target="_blank">普诗玛农业</a></li>
												<li class="l7"><a href="http://www.25500.com"
													target="_blank">爱途途乡村游</a></li>
												<li class="l8"><a href="http://www.aidongwu.net"
													target="_blank">爱动物网</a></li>
												<li class="l9"><a href="http://www.tatabang.cn"
													target="_blank">它它邦宠物网</a></li>
												<li class="l10"><a href="http://www.neipet.com"
													target="_blank">邻家的宠物</a></li>
												<li class="l11"><a href="http://www.chongyouzhijia.com"
													target="_blank">宠友之家</a></li>
												<li class="l12"><a href="http://www.58.com/samoye/"
													target="_blank">萨摩耶</a></li>
												<li class="l13"><a href="http://www.58.com/xuenaruei/"
													target="_blank">雪纳瑞犬</a></li>
												<li class="l14"><a href="http://www.58.com/bixiong/"
													target="_blank">比熊犬</a></li>
												<li class="l15"><a href="http://www.yc.cn"
													target="_blank">宠物</a></li>
												<li class="l16"><a href="http://www.petcun.com"
													target="_blank">宠物生活</a></li>
												<li class="l17"><a href="http://54114.com/gougou"
													target="_blank">狗狗</a></li>
												<li class="l18"><a href="http://www.ajungu.com"
													target="_blank">阿菌菇吃货</a></li>
												<li class="l19"><a href="http://www.maooh.com"
													target="_blank">猫oh宠物网</a></li>
												<li class="l20"><a href="http://365bet.cd"
													target="_blank">365bet体育在线</a></li>
												<li class="l21"><a href="http://www.lxxt.net"
													target="_blank">365bet</a></li>
												<li class="l22"><a href="http://www.lccfm.com"
													target="_blank">365bet官网</a></li>
												<li class="l23"><a href="http://www.rmk9.com"
													target="_blank">365bet备用网址</a></li>
												<li class="l24"><a href="http://www.ursha7.com/"
													target="_blank">永利娱乐场手机登录</a></li>
												<li class="l25"><a href="http://www.jqxjz.com/"
													target="_blank">365bet</a></li>
												<li class="l26"><a href="http://www.myqsj.com/"
													target="_blank">德国牧羊犬</a></li>
												<li class="l27"><a href="http://www.myzangao.com/"
													target="_blank">藏獒</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="frameE19tNc" class="frame move-span cl frame-1">
							<div id="frameE19tNc_left" class="column frame-1-c">
								<div id="frameE19tNc_left_temp" class="move-span temp"></div>
							</div>
						</div>
					</div>
					<!--[/diy]-->
					<!--[diy=diy4]-->
					<div id="diy4" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy5]-->
					<div id="diy5" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy6]-->
					<div id="diy6" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy7]-->
					<div id="diy7" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy8]-->
					<div id="diy8" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy9]-->
					<div id="diy9" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy10]-->
					<div id="diy10" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy11]-->
					<div id="diy11" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy12]-->
					<div id="diy12" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy13]-->
					<div id="diy13" class="area"></div>
					<!--[/diy]-->
					<!--[diy=diy14]-->
					<div id="diy14" class="area"></div>
					<!--[/diy]-->
				</div>
			</div>




			<script type="text/javascript">
				_attachEvent(window, 'load', getForbiddenFormula, document);
				function getForbiddenFormula() {
					var toGetForbiddenFormulaFIds = function() {
						ajaxget('plugin.php?id=cloudsearch&formhash=a0c170c8');
					};
					var a = document.body.getElementsByTagName('a');
					for (var i = 0; i < a.length; i++) {
						if (a[i].getAttribute('sc')) {
							a[i].setAttribute('mid', hash(a[i].href));
							a[i].onmousedown = function() {
								toGetForbiddenFormulaFIds();
							};
						}
					}
					var btn = document.body.getElementsByTagName('button');
					for (var i = 0; i < btn.length; i++) {
						if (btn[i].getAttribute('sc')) {
							btn[i].setAttribute('mid', hash(btn[i].id));
							btn[i].onmousedown = function() {
								toGetForbiddenFormulaFIds();
							};
						}
					}
				}
			</script>



			<script>
				var csdn123_obj1 = document || document.documentElement;
				csdn123_obj1.oncopy = function() {
					alert("本网页禁止复制");
				}
				var csdn123_obj2 = document || document.documentElement;
				csdn123_obj2.onselectstart = function() {
					return false;
				}
			</script>

			<script
				src="http://www.zengsong.org/plugin.php?id=dc_signin:check&formhash=a0c170c8"
				type="text/javascript"></script>

		</div>
		<!-- 底部版权 -->
		<div class="ft_wp">

			<div class="zjdba">
				<div id="zjdb" class="wp">
					<div id="gll">
						<div id="ljwm">
							<ul>
								<span class="t1" id="listtitle">关于我们</span>
								<li><a href="#">网站简介</a></li>
								<li><a href="#">付费推广</a></li>
								<li><a href="#">合作联盟</a></li>
							</ul>
						</div>

						<div id="tsjy">
							<ul>
								<span class="t3" id="listtitle">论坛地图</span>
								<li><a href="#">新手上路</a></li>
								<li><a href="#">常见问题</a></li>
								<li><script type="text/javascript">
									var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
											: " http://");
									document
											.write(unescape("%3Cspan id='cnzz_stat_icon_1253112512'%3E%3C/span%3E%3Cscript src='"
													+ cnzz_protocol
													+ "s95.cnzz.com/z_stat.php%3Fid%3D1253112512%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
								</script></li>
							</ul>
						</div>

						<div id="lxwm">
							<ul>
								<span class="t2" id="listtitle">联系我们</span>
								<li><a href="#">交流Q群：120225139</a></li>
								<li><a href="#">客服 QQ：93525642</a></li>
								<li><a href="#">邮箱：93525642@qq.com </a></li>
							</ul>
						</div>

						<div id="yyonload">
							<ul>
								<span class="t4" id="listtitle">移动客户端下载</span>
								<li class="a1"><a href="https://www.pgyer.com/8DjH"><i></i></a></li>
								<li class="a2"><a href="https://www.pgyer.com/8DjH"><i></i></a></li>
								<li class="a3"><a href="https://www.pgyer.com/8DjH"><i></i></a></li>
							</ul>
						</div>

						<div id="sj2wm">
							<ul>
								<span class="t4" id="listtitle">手机扫描二维码</span>
								<li class="t1"><a href="https://www.pgyer.com/8DjH"><i></i></a></li>

							</ul>
						</div>

					</div>
				</div>
			</div>

			<div id="ft" class=" cl">



				<div id="flk">
					<p>
						<a
							href="http://wpa.qq.com/msgrd?V=3&amp;Uin=93525642&amp;Site=宠物赠送网-公益网站&amp;Menu=yes&amp;from=discuz"
							target="_blank" title="QQ"><img
							src="static/image/common/site_qq.jpg" alt="QQ" /></a><span
							class="pipe">|</span><a href="plugin.php?id=wq_links:main">申请友链</a><span
							class="pipe">|</span><a href="http://www.zengsong.org/archiver/">Archiver</a><span
							class="pipe">|</span><a href="http://m.zengsong.org">手机版</a><span
							class="pipe">|</span><a
							href="http://www.zengsong.org/forum.php?mod=misc&action=showdarkroom">小黑屋</a><span
							class="pipe">|</span><strong><a
							href="http://www.zengsong.org" target="_blank">宠物屋</a></strong> &nbsp;<a
							href="http://discuz.qq.com/service/security" target="_blank"
							title="防水墙保卫网站远离侵害"><img
							src="static/image/common/security.png"></a>&nbsp;&nbsp;<span
							id="tcss"></span>
						<script type="text/javascript"
							src="http://tcss.qq.com/ping.js?v=1Wzc" charset="utf-8"></script>
						<script type="text/javascript" reload="1">
							pgvMain({
								"discuzParams" : {
									"r2" : "52646329",
									"ui" : 0,
									"rt" : "portal",
									"pn" : 1,
									"qq" : "000",
									"logo" : 11
								},
								"extraParams" : ""
							});
						</script>
					</p>

				</div>

				<div id="ftl">
					<p>
						Powered by <strong><a href="http://www.zengsong.org"
							target="_blank">宠物屋</a></strong>
					</p>
					<p class="xs0">
						&copy; 2017 <a href="http://www.comsenz.com" target="_blank">Comsenz
							Inc.</a>
					</p>
				</div>


				<div id="frt">


					<div class="wp">


						<p class="dd01">
							<a href="archiver/">Archiver</a><span class="pipe">|</span><a
								href="http://www.zengsong.org/forum.php?mobile=yes">手机版</a><span
								class="pipe">|</span><a
								href="http://www.zengsong.org/forum.php?mod=misc&amp;action=showdarkroom">小黑屋</a><span
								class="pipe">|</span><a href="http://www.comsenz.com/"
								target="_blank">Comsenz Inc.</a> &nbsp;<!-- <a
								href="http://discuz.qq.com/service/security" target="_blank"
								title="防水墙保卫网站远离侵害"><img
								src="static/image/common/security.png"></a> -->
						</p>
						<p class="dd02">GMT+8, 2015-4-8 15:14 , Processed in 0.100590
							second(s), 10 queries.</p>
					</div>
				</div>
			</div>
			<!-- 底部 -->

			<!--<script src="home.php?mod=misc&ac=sendmail&rand=1500692715"
				type="text/javascript"></script>-->
			<div id="scrolltop">
				<span hidefocus="true"><a title="返回顶部"
					onclick="window.scrollTo('0','0')" class="scrolltopa"><b>返回顶部</b></a></span>
			</div>
			<script type="text/javascript">
				_attachEvent(window, 'scroll', function() {
					showTopLink();
				});
				checkBlind();
			</script>
			<div id="discuz_tips" style="display:none;"></div>
			<script type="text/javascript">
				var tipsinfo = '52646329|X3.2|0.6||0||0|7|1500692715|e3774625060e2ab1b279d488e7ab4aaa|2';
			</script>
			<script src="http://discuz.gtimg.cn/cloud/scripts/discuz_tips.js?v=1"
				type="text/javascript" charset="UTF-8"></script>
</body>
</html>
