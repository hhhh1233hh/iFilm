<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>个性化推荐</title>
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
					<h1 class="m_2">我的个性化推荐</h1>
					<div class="search">
						<a href="#" class="high_point_pic"><h5></h5></a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="parentWrap">
					<div class="parent" style="background-color: #edeff0;">
						<c:choose>
								<c:when test="${empty requestScope.recommend}">
									暂时没有推荐信息哦~
								</c:when>
								<c:otherwise>
									<c:forEach items="${requestScope.recommend}" var="m">
										<div class="child">
											<a href="single.jsp"><img src="images/pic7.jpg" class="img-responsive" alt="" /></a>
											<p><center>
												<c:out value="${m.get(moviename)}" />
											</center></p>
										</div>
									</c:forEach> 
								</c:otherwise>
							</c:choose>
					</div>
				</div>
				<br />
				<div class="parentWrap">
					<div class="parent" style="background-color: #edeff0;">
						<div class="child">
							<a href="single.jsp"><img src="images/pic7.jpg"
								class="img-responsive" alt="" /></a>
							<p>
							<center>名称</center>
							</p>
						</div>
						<div class="child">
							<a href="single.jsp"><img src="images/pic1.jpg"
								class="img-responsive" alt="" /></a>
							<p>
							<center>名称</center>
							</p>
						</div>
						<div class="child">
							<a href="single.jsp"><img src="images/pic7.jpg"
								class="img-responsive" alt="" /></a>
							<p>
							<center>名称</center>
							</p>
						</div>
						<div class="child">
							<a href="single.jsp"><img src="images/pic9.jpg"
								class="img-responsive" alt="" /></a>
							<p>
							<center>名称</center>
							</p>
						</div>
						<div class="child">
							<a href="single.jsp"><img src="images/pic2.jpg"
								class="img-responsive" alt="" /></a>
							<p>
							<center>名称</center>
							</p>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<br />
				<!-- 票房榜 -->
		<!-- 吐槽榜 -->
		<div class="clearfix"> </div>
		<div class="box_1">
		<!-- <div class="pagination"></div> -->
      	 
      	 <%@ include file="page.html"%>
      	 <div class="search">
		   	<a href="#" class="high_point_pic"><h5></h5></a>
		</div>
		<div class="clearfix"> </div>
		
		
		</div>
		
		<!-- box_2 -->
		
		
      </div>
   </div>
 </div>
 
<%@ include file="footer.jsp"%>


</body>
</html>