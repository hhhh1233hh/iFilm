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

.menu {
	font: 12px verdana, arial, sans-serif; /* 设置文字大小和字体样式 */
}

.menu, .menu li {
	float: left;
	list-style: none; /* 将默认的列表符号去掉 */
	padding: 0px; /* 将默认的内边距去掉 */
	margin: 0px; /* 将默认的外边距去掉 */
}

.menu li a {
	display: block; /* 将链接设为块级元素 */
	width: 60px; /* 设置宽度 */
	height: 30px; /* 设置高度 */
	line-height: 30px; /* 设置行高，将行高和高度设置同一个值，可以让单行文本垂直居中 */
	text-align: center; /* 居中对齐文字 */
	background: #edeff0; /* 设置背景色 */
	color: #000; /* 设置文字颜色 */
	text-decoration: none; /* 去掉下划线 */
	border-right: 1px solid #909ca2; /* 在左侧加上分隔线 */
}

.menu li a:hover {
	background: #d8232a; /* 变换背景色 */
	color: #fff; /* 变换文字颜色 */
}

.menu li a.last {
	border-right: 0; /* 去掉左侧边框 */
}

.title {
	font-size: 18px;
	color: #909ca2;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>全部电影</title>
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
<link rel="stylesheet" href="css/pagination.css">
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
				<div style="width: 80%; height: 200px; margin: 0 auto">
					<ul class="menu">
						<li><a href="http://www.baidu.com"><b>类型：</b></a></li>
						<li><a href="http://www.baidu.com">全部</a></li>
						<li><a href="http://www.baidu.com">爱情</a></li>
						<li><a href="http://www.Code52.Net">喜剧</a></li>
						<li><a href="http://www.Code52.Net">动画</a></li>
						<li><a href="http://www.Code52.Net">剧情</a></li>
						<li><a href="http://www.yahoo.com">恐怖</a></li>
						<li><a href="http://www.yahoo.com">惊悚</a></li>
						<li><a href="http://www.yahoo.com">科幻</a></li>
						<li><a href="http://www.yahoo.com">动作</a></li>
						<li><a href="http://www.yahoo.com">悬疑</a></li>
						<li><a href="http://www.yahoo.com">犯罪</a></li>
						<li><a href="http://www.yahoo.com">冒险</a></li>
						<li><a href="http://www.yahoo.com">战争</a></li>
						<li><a href="http://www.yahoo.com">奇幻</a></li>
						<li><a href="http://www.yahoo.com">运动</a></li>
						<li><a href="http://www.yahoo.com">家庭</a></li>
						<li><a href="http://www.yahoo.com">古装</a></li>
						<li><a href="http://www.yahoo.com">武侠</a></li>
						<li><a href="http://www.yahoo.com">西部</a></li>
						<li><a href="http://www.yahoo.com">历史</a></li>
						<li><a href="http://www.yahoo.com">传记</a></li>
						<li><a href="http://www.yahoo.com">歌舞</a></li>
						<li><a href="http://www.yahoo.com">黑色电影</a></li>
						<li><a href="http://www.yahoo.com">短片</a></li>
						<li><a href="http://www.yahoo.com">纪录片</a></li>
						<li><a href="http://www.google.com" class="last">其他</a></li>
					</ul>

					<hr />
					<ul class="menu">
						<li><a href="http://www.baidu.com"><b>区域：</b></a></li>
						<li><a href="http://www.baidu.com">全部</a></li>
						<li><a href="http://www.Code52.Net">大陆</a></li>
						<li><a href="http://www.Code52.Net">美国</a></li>
						<li><a href="http://www.Code52.Net">韩国</a></li>
						<li><a href="http://www.yahoo.com">日本</a></li>
						<li><a href="http://www.yahoo.com">中国香港</a></li>
						<li><a href="http://www.yahoo.com">中国台湾</a></li>
						<li><a href="http://www.yahoo.com">泰国</a></li>
						<li><a href="http://www.yahoo.com">印度</a></li>
						<li><a href="http://www.yahoo.com">法国</a></li>
						<li><a href="http://www.yahoo.com">英国</a></li>
						<li><a href="http://www.yahoo.com">俄罗斯</a></li>
						<li><a href="http://www.yahoo.com">意大利</a></li>
						<li><a href="http://www.yahoo.com">西班牙</a></li>
						<li><a href="http://www.yahoo.com">德国</a></li>
						<li><a href="http://www.yahoo.com">波兰</a></li>
						<li><a href="http://www.yahoo.com">澳大利亚</a></li>
						<li><a href="http://www.yahoo.com">伊朗</a></li>
						<li><a href="http://www.google.com" class="last">其他</a></li>
					</ul>

					<ul class="menu">
						<li><a href="http://www.baidu.com"><b>年代：</b></a></li>
						<li><a href="http://www.baidu.com">全部</a></li>
						<li><a href="http://www.Code52.Net">2019以后</a></li>
						<li><a href="http://www.Code52.Net">2019</a></li>
						<li><a href="http://www.Code52.Net">2018</a></li>
						<li><a href="http://www.Code52.Net">2017</a></li>
						<li><a href="http://www.Code52.Net">2016</a></li>
						<li><a href="http://www.Code52.Net">2015</a></li>
						<li><a href="http://www.Code52.Net">2014</a></li>
						<li><a href="http://www.Code52.Net">2013</a></li>
						<li><a href="http://www.Code52.Net">2012</a></li>
						<li><a href="http://www.Code52.Net">2011</a></li>
						<li><a href="http://www.Code52.Net">2010~2000</a></li>
						<li><a href="http://www.Code52.Net">90年代</a></li>
						<li><a href="http://www.Code52.Net">80年代</a></li>
						<li><a href="http://www.Code52.Net">70年代</a></li>
						<li><a href="http://www.google.com" class="last">更早</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
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
					<h1 class="m_2">全部电影</h1>
					<div class="search">
						<a href="#" class="high_point_pic"><h5></h5></a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="parentWrap">
					<div class="parent" style="background-color: #edeff0;">
					<c:forEach var="movie"   items="allmovies" begin="0"    end="29"><!-- 要迭代的list：allmovies； 每一项：movie -->
				        <div class="child">
				        <a href="single.jsp"><img src="${link }" class="img-responsive" alt="" /></a>
						<p><center>${name }</center></p>   <!-- 电影名称 -->
						<font color="orange"><center>${type }</center></font>    <!-- 电影评分 -->
				        </div>  
					</c:forEach>
					</div>
				</div>
				<br />
				<div class="clearfix"></div>
				<br />
				<!-- 票房榜 -->
				<br />
		<div class="clearfix"> </div>
		<br />
		<!-- 吐槽榜 -->
		<br />
		<br />
		<div class="clearfix"> </div>
		<div class="box_1">
		<!-- <div class="pagination"></div> -->
      	 
      	 <%@ include file="page.jsp"%>
		<div class="clearfix"> </div>
		
		
		</div>
		
		<!-- box_2 -->
		
		
      </div>
   </div>
 </div>
 
<%@ include file="footer.jsp"%>


</body>
</html>