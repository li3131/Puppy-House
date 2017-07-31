<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Puppy House</title>
<link rel="shortcut icon" href="images/icon.ico"/>
<link href="/PuppyHouse/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<!-- begin #container -->
	<div id="container">
		<!-- begin #header -->
		<div id="header">
            <div id="title">
			    <h1>puppy house</h1>
			    <div class="loginform">
			    	<s:if test="#session.user==null">
			    	<span class="s1"><a href="login.jsp">用户登录 ${session.user} </a><span>
			    	</s:if>
			    	<s:if test="#session.user!=null">
					<span class="s2">欢迎你，<a href="userDetail.jsp" target="_blank">${sessionScope.user.trueName }</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	                <a href="user_Logout">注销</a></span>
					</s:if>
			    </div>
            </div> 
            <div id="navcontainer">
                <ul id="navlist">
					<li id="active"><a href="" id="current">主页</a></li>
					<li><a href="/PuppyHouse/toShowAdopt">宠物领养</a></li>
					<li><a href="/PuppyHouse/toShowAdopt">宠物护理知识</a></li>
					<li><a href="/PuppyHouse/toShowAdopt">领养须知</a></li>
					<li><a href="/PuppyHouse/toShowAdopt">宠物论坛</a></li>
				</ul>
            </div>
			<div id="headerPic">
				<ul style="color: #FFDEAD;font-family: '楷体'">
					<li class="li1">Dog is ours friends.</li>
					<li class="li2">人一生可能有很多宠物，但是狗狗一生只有一个主人</li>
					<li class="li3">让我们一起去帮助这些无家可归的狗狗们，帮助它们找到一个家</li>
				</ul>
			</div>
		</div>
		<!-- end #header -->
		<!-- begin #sidebar1 -->
		<div id="sidebar1">
			<div class="t">
				<div class="b">
					<div class="l">
						<div class="r">
							<div class="bl">
								<div class="br">
									<div class="tl">
										<div class="tr">
											<h1>
												Welcome to <span>Puppy House</span>
											</h1>
											<p>
												<img src="/PuppyHouse/images/puppyPic.jpg" alt="puppyPic"
													class="puppyPic" /> <b><span style="font-size: 17px;">本网站旨在为广大喜爱狗狗的用户提供一个安全
														便捷的一个领养狗狗的平台。</span></b> <br />
												<br />
												<br /> <span
													style="color: #FFFF00;font-family: '楷体';font-size: 17px;">&nbsp;&nbsp;&nbsp;相信各位喜欢狗狗的人在看到这么多的狗狗无家可归的时候是很心痛的,还有很多是原来的主人
													没有办法
													必须将自己喜爱的狗狗寄养在别人那里,也是可以通过我们的网站来发布招领信息,在这里为自己喜爱的狗狗找到一个真诚可靠的新主人来爱护它们。</span><br />
												<br />
												<br /> <b><span style="color: red;font-size: 17px;">你在我们的网站可以做的事:</span></b><br />
											<li style="color: #F5DEB3;font-family: '楷体';font-size: 15px;">
												查看那些无家可归的和原主人要寄养的狗狗</li>
											<br />
											<li style="color: #F5DEB3;font-family: '楷体';font-size: 15px;">
												发布寄养的消息，让别人看到你的狗狗</li>
											<br />
											<li style="color: #F5DEB3;font-family: '楷体';font-size: 15px;">
												领养你喜欢的狗狗</li>
											<br />
											<br />
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end #sidebar1 -->
		<!-- begin #mainContent -->
		<div id="mainContent">
			<h1>我们的服务</h1>
			<ul>
				<li>查看所有需要我们关心的狗狗</li>
				<li>发布寄养信息，等待可靠的新主人来领养</li>
				<li>领养你喜欢的狗狗，带回家细心照料</li>
				<li>请爱护你的狗狗</li>
			</ul>
		</div>
		<!-- end #mainContent -->
		<!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats -->
		<br class="clearfloat" />
		<!-- begin #footer -->
		<div id="footer">
			<div class="ftt">
				<a href="#"><img src="/PuppyHouse/images/ftt.jpg"
					alt="Free Flash Templates" /></a>
			</div>
			<div class="rss">
				<a href="#"><img src="/PuppyHouse/images/rss.jpg"
					alt="Blog about free flash templates" /></a>
			</div>
			<div class="copyright">puppy house Copyright © 30 September
				2009</div>
		</div>
		<!-- end #footer -->
	</div>
	<!-- end #container -->
</body>
</html>
