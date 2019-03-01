<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
a.high_point_pic {
	color: #3f444e;
	float: left;
	color: #3f444e;
	font-size: 1.3em;
	text-transform: uppercase;
	font-weight: 600;
	font-size: 1.1em;
	margin-top: 6px;
}

a.high_point_pic:hover {
	color: #B80000;
}

body, p {
	margin: 0;
}

.parentWrap {
	overflow: hidden;
}

.parent {
	margin-right: -20px;
	overflow: hidden;
}

.child {
	float: left;
	width: 20%;
	padding-right: 20px;
	box-sizing: border-box;
	background-clip: content-box;
}


</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联系我们</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Movie_store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- start plugins -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<link
	href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<script src="js/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			nav : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
</head>
<body>

	<div class="container">
		<div class="container_wrap">
			<%@ include file="header.jsp"%>
			<div class="content">
				<!-- <div class="box_1">
      	 <h1 class="m_2">Featurd Movies</h1>
      	 <div class="search">搜索框
		    <form>
				<input type="text" value="Search..." onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
				<input type="submit" value="">
		    </form>
		</div>
		<div class="clearfix"> </div>
		</div>
		box_1 -->
				<br />
				<!-- 评分榜 -->
				<div class="box_1">
					<h1 class="m_2">iFilm</h1>
					<div class="search">
						<a href="#" class="high_point_pic"><h5></h5></a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="parentWrap">
					<div class="parent" style="background-color: #edeff0;">
						<p><b>内容报道合作</b>—</p>
						<p>欢迎各类媒体、影视剧公司、制作公司、专业网站、出版社、协会等与我们联系，在各类文字、图片、音视频资讯等方面建立长期合作。</p>
						<p><b>活动合作</b>—</p>
						<p>欢迎各方与iFilm网洽谈推广会议、论坛、演唱会、大奖赛、巡展或体育赛事等各类活动。通过iFilm的报道推广，扩大相关活动的影响力。</p>
						
						<p><b>出版合作</b>—</p>
						<p>欢迎各大出版社与iFilm合作各类图书内容。Tel：(86-10)52719381</p>
						<br>
						<p><b>iFilm财经（产品）</b> </p>
						<p>Tel：4006900000转2 </p>
						<p>Email：fincsc@staff.sina.com.cn</p>
						<br>
						
						<p><b>移动增值产品、语音增值业务</b>——WAP、订阅、下载、彩铃、IVR（交互式语音应答）</p>
						<p>iFilm无线 </p>
						<p>Tel：4000130130  </p>
						<p>Email：gzkf@staff.sina.com.cn</p>
						<br>
						
						<p><b>iFilm微博</b> </p>
						<p>客户服务热线： </p>
						<p>4000960960 （个人） </p>
						<p>4000980980（企业）  </p>
						<p>Email：gzkf@staff.sina.com.cn</p>
						<br>
						
						<p><b>iFilm邮箱产品</b> </p>
						<p>邮箱——提供免费邮箱/VIP收费邮箱/企业邮箱服务  </p>
						<p>（VIP收费邮箱/免费邮箱）客户服务电话： 4006900000转5  </p>
						<p>（企业邮箱服务）客户服务电话： 4006900000转4  </p>
						<p>免费邮箱、收费邮箱：登陆邮箱首页最低栏，点击 “在线客服“，不能登陆用户请您关注微信公众号：iFilm客服  </p>
						<p>企业邮箱：kf@sina.net </p>

					</div>
				</div>
				<br />
				<div class="clearfix"></div>
				<br />
			</div>
			<!-- box_2 -->
		</div>
	</div>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>