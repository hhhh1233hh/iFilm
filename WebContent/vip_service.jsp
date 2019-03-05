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
<title>注册成功</title>
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
					<h1 class="m_2">分类饼状图</h1>
					<div class="search">
						<a href="#" class="high_point_pic"><h5></h5></a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="parentWrap">
					<div class="parent" style="background-color: #edeff0;">
						<div class="bingzhuangtu"
							style="width: 60%; background-color: #e3e6e8; float: left">
							<a href="single.jsp"><center>
									<img src="images/pic1.jpg" class="img-responsive" alt="" />
								</center></a>
							<p>
							<center>XXX季度电影分类饼状图</center>
							</p>
							<p>由图中可以看出，XXX类型电影在本季度占比最高</p>
						</div>
						<div class="bingzhuangtu"
							style="width: 40%; background-color: #d8e8f0; float: right">
							<h3>
								<center>类型排行榜</center>
							</h3>
							<p>
							<center>No.1XXX</center>
							</p>
						</div>

					</div>
				</div>
				<br />
				<div class="parentWrap">
					<div class="parent" style="background-color: #edeff0;">
						<div class="child">
							<h3>
								<center>XXX排行榜</center>
							</h3>
							<p>
							<center>No.1 XXX</center>
							</p>
						</div>
					</div>
				</div>



				<br />
				<!-- 票房榜 -->
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