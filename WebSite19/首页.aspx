<%@ Page Language="C#" AutoEventWireup="true" CodeFile="首页.aspx.cs" Inherits="首页" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="X-UA-Compatible" content="IE=edge"/>
		<meta name="keywords" content="湖北大学"/>
		<meta name="description" content="湖北大学校务网站"/>
		<title>湖北大学校务网站</title>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
	</head>
	<body>
		<!--header-->
		<div class="top_wrap">
			<!--top index-->
            <div class="top">
                <span class="welcome">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您访问湖北大学校务网站！</span>
                <div class="corner">
                    <a onclick=SetHome(this,window.location) title="English" href="javascript:void(0);">English</a>
                    <span>|</span>
                    <a onclick=addFavorite(window.location,document.title) title="添加收藏" href="javascript:void(0);">加入收藏</a>
                </div>
                <div class="clear"></div>
            </div>
		</div>
		<!--logo and nav-->
		<div class="header_wrap">
			<div class="header">
				<a href="首页.aspx" class="logo"><img src="images/logo2.jpg" width="357" height="65" /></a>
				<div class="nav_list">
					<ul id="nav" class="nav clearfix">
						<li class="nLi" style="display: none;"></li>
						<li class="nLi">
							<h3><a href="管理员登录页.aspx">教务系统</a></h3>
							<ul class="sub">
								<li><a href="管理员登录页.aspx">管理员教务系统</a></li>
                                <li><a href="学生登录页.aspx">学生教务系统</a></li>
							</ul>
						</li>
						<li class="nLi">
							<h3><a href="teachers.html">学校概况</a></h3>
							<ul class="sub">
                                <li><a href="http://www.hubu.edu.cn/xxgk/hdjj.htm">湖大简介</a></li>
                                <li><a href="http://www.hubu.edu.cn/xxgk/xrld.htm">现任领导</a></li>
                                <li><a href="http://www.hubu.edu.cn/xxgk/lrld.htm">历任领导</a></li>
                                <li><a href="http://www.hubu.edu.cn/xxgk/hdzc.htm">湖大章程</a></li>
                                <li><a href="http://www.hubu.edu.cn/xxgk/xyfg.htm">校园风光</a></li>
                                <li><a href="http://www.hubu.edu.cn/xxgk/xslj.htm">校史校记</a></li>
                                <li><a href="http://www.hubu.edu.cn/xxgk/hdzg.htm">湖大之歌</a></li>
                                <li><a href="http://vi.hubu.edu.cn/">湖大视觉形象</a></li>
							</ul>
						</li>
						<li class="nLi">
							<h3><a href="study.html">人才培养</a></h3>
							<ul class="sub">
								<li><a href="http://jwc.hubu.edu.cn/">本科生教育</a></li>
								<li><a href="http://gs.hubu.edu.cn/">研究生教育</a></li>
                                <li><a href="http://ic.hubu.edu.cn/">留学生教育</a></li>
								<li><a href="http://jjy.hubu.edu.cn/">继续教育</a></li>
                                <li><a href="http://www.hubu.edu.cn/rcpy_/ggsyq.htm">改革试验区</a></li>
                                <li><a href="http://syzx.hubu.edu.cn/">实验教学</a></li>

							</ul>
						</li>
						<li class="nLi">
							<h3><a href="http://www.hubu.edu.cn/xxgk/hdjj.htm#">公共服务</a></h3>
							<ul class="sub">
								<li><a href="http://jwc.hubu.edu.cn/cycx/xlap.html">湖大校历</a></li>
								<li><a href="http://www.hubu.edu.cn/ggfw/bgdh.htm">办公电话</a></li>
								<li><a href="http://www.hubu.edu.cn/ggfw/hqfw.htm">后勤服务</a></li>
                                <li><a href="http://price.hubu.edu.cn/">价格服务</a></li>
                                <li><a href="http://cwc.hubu.edu.cn/">财务查询</a></li>
                                <li><a href="http://inc.hubu.edu.cn/">网络服务</a></li>
                                <li><a href="http://lib.hubu.edu.cn/">图书资源</a></li>
                                <li><a href="http://www.hubu.edu.cn/ggfw/bzjs.html">本站介绍</a></li>
							</ul>
						</li>
						<li class="nLi">
							<h3><a href="resource.html">招生就业</a></h3>
							<ul class="sub">
								<li><a href="http://zsxx.hubu.edu.cn/">本科生招生</a></li>
								<li><a href="http://yz.hubu.edu.cn/">研究生招生</a></li>
								<li><a href="http://jjy.hubu.edu.cn/">继续就业招生</a></li>
								<li><a href="http://www.hubu.edu.cn/zsjy/lxszs.htm">留学生招生</a></li>
                                <li><a href="http://hubu.91wllm.com/">就业创业信息网</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<!--banner-->
		<div class="banner">
			<div class="bd">
				<ul>
					<li class="first"><a href="javascript:void(0);"></a></li>
					<li class="second"><a href="javascript:void(0);"></a></li>
					<li class="third"><a href="javascript:void(0);"></a></li>
                    <li class="fourth"><a href="javascript:void(0);"></a></li>
					<li class="fifth"><a href="javascript:void(0);"></a></li>
				</ul>
			</div>
			<div class="hd"><ul></ul></div>
		</div>
		<!--content-->
		<div class="content">
			<div class="left_tab">
				<div class="hd">
					<ul><li class="first">最新课程</li><li class="second">全部课程</li></ul>
				</div>
				<div class="bd">
					<div class="box">
						<a href="list.html" class="more">MORE+</a>
						<ul class="clearfix">
							<li><a href="more.html"><img src="images/数据库系统.jpg" /><h4>数据库系统概论</h4><span class="major">计信学院</span></a></li>
							<li><a href="more.html"><img src="images/经济学原理.jpg" /><h4>经济学原理</h4><span class="major">经管学院</span></a></li>
							<li><a href="more.html"><img src="images/生物化学与分子生物学.jpg" /><h4>生物化学与分子生物学</h4><span class="major">生化学院</span></a></li>
							<li><a href="more.html"><img src="images/asp.net.jpg" /><h4>WEB程序设计</h4><span class="major">计信学院</span></a></li>
							<li><a href="more.html"><img src="images/文学概论.jpg" /><h4>文学概论</h4><span class="major">文学院</span></a></li>
							<li><a href="more.html"><img src="images/高等数学.jpg" /><h4>高等数学</h4><span class="major">理科必修</span></a></li>
						</ul>
					</div>
					<div class="box">
						<a href="secret.html" class="more">MORE+</a>
						<ul class="clearfix">
                            <li><a href="more.html"><img src="images/生物化学与分子生物学.jpg" /><h4>生物化学与分子生物学</h4><span class="major">生化学院</span></a></li>
                            <li><a href="more.html"><img src="images/asp.net.jpg" /><h4>WEB程序设计</h4><span class="major">计信学院</span></a></li>
                            <li><a href="more.html"><img src="images/文学概论.jpg" /><h4>文学概论</h4><span class="major">文学院</span></a></li>
                            <li><a href="more.html"><img src="images/高等数学.jpg" /><h4>高等数学</h4><span class="major">理科必修</span></a></li>
                            <li><a href="more.html"><img src="images/数据库系统.jpg" /><h4>数据库系统概论</h4><span class="major">计信学院</span></a></li>
                            <li><a href="more.html"><img src="images/经济学原理.jpg" /><h4>经济学原理</h4><span class="major">经管学院</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="right_box">
				<!--notice-->
				<div class="notice">
					<div class="n_title">
						<b>校园新闻</b>
						<a href="首页.aspx">MORE+</a>
					</div>
					<div class="bd">
						<ul class="infoList">
							<li><a href="nDetail.html">湖北大学新一届校务委员会成立</a><span class="date">2019/10/01</span></li>
							<li><a href="nDetail.html">学校召开网络安全工作会议</a><span class="date">2019/10/09</span></li>
							<li><a href="nDetail.html">我校师生持续热议庆祝中华人民共和国成立70周年大会</a><span class="date">2019/10/04</span></li>
							<li><a href="nDetail.html">湖北建科集团向湖北大学捐赠100万</a><span class="date">2019/09/30</span></li>
							<li><a href="nDetail.html">【主题教育进行时】机关党委组织主题教育集中自学活动</a><span class="date">2019/10/09</span></li>
							<li><a href="nDetail.html">校领导慰问离退休老同志代表</a><span class="date">2019/10/01</span></li>
						</ul>
					</div>
				</div>
				<!--code-->

			</div>
			<div class="clear"></div>
			<div class="friend_link">
				<b>友情链接：</b><a href="http://hubu.91wllm.com/" target="_blank">湖北大学就创业信息平台</a><a href="http://www.moe.gov.cn/" target="_blank">国家教育部</a>
			</div>
		</div>
		<!--footer-->
		<div class="footer_wrap">
			<div class="line"></div>
			<div class="footer">
				<div class="f_left">
					<img src="images/logo-.png" class="f_logo" />
					<div class="contact">
						<p><a href="contact.html">联系我们</a><a href="javascrip:void(0);">站长统计</a></p>
						<p>武昌校区&nbsp;&nbsp;&nbsp;&nbsp;所在地址：湖北省武汉市武昌区友谊大道368号</p>
                        <p>阳逻校区&nbsp;&nbsp;&nbsp;&nbsp;所在地址：湖北省武汉市新洲区平江东路630号</p>
						<p>版权所有©湖北大学 2019 湖北大学党委宣传部&nbsp;&nbsp;&nbsp;&nbsp;电话：027-8888888&nbsp;&nbsp;&nbsp;&nbsp;</p>
					</div>
				</div>

				<div class="clear"></div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery-1.11.0.min.js" ></script>
		<script type="text/javascript" src="js/jquery.SuperSlide.2.1.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<script type="text/javascript">
		    //banner滚动效果
		    jQuery(".banner").slide({ titCell: ".hd ul", mainCell: ".bd ul", effect: "fold", autoPlay: true, autoPage: true, trigger: "click" });
		    //tab切换效果
		    jQuery(".left_tab").slide();
		    //news滚动效果
		    jQuery(".notice").slide({ mainCell: ".bd ul", autoPage: true, effect: "top", autoPlay: true, vis: 5 });
		</script>
	</body>
</html>
