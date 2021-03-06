<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
	a.high_point_pic{
		color:#3f444e;
		float:left;
	color:#3f444e;
	font-size:1.3em;
	text-transform:uppercase;
	font-weight:600;
	font-size: 1.1em;
	margin-top: 6px;
	}
	a.high_point_pic:hover{
		color:#B80000;
	}
	
	body,p{margin: 0;}   
.parentWrap{   
    overflow: hidden;   
}   
.parent{   
    margin-right: -20px;   
    overflow: hidden;   
}   
.child{   
    float: left;   
    width: 20%;   
    padding-right: 20px;   
    box-sizing: border-box;   
    background-clip: content-box;   
}   
	
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>吐槽榜</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Movie_store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- start plugins -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>
</head>
<body>

<div class="container">
	<div class="container_wrap">
		<%@ include file="header.jsp"%>
      <div class="content">
		<br/>
		<!-- 评分榜 -->
		<div class="box_1">
      	 <h1 class="m_2">吐槽榜</h1>
      	 <div class="search">
		</div>
		<div class="clearfix"> </div>
		</div>
		<div class="parentWrap">  
	   		<div class="parent" style="background-color: #edeff0;">  
	   		 <c:forEach var="movie"   items="${requestScope.movies_tc }" begin="0"    end="29"><!-- 要迭代的list：movies_tc； 每一项：movie -->
		        
		        <div class="child">
		        <a href="SingleServlet?movieitem=${movie.get('movieid') }"><img style="width:250px;height:289px;" src="${movie.get('link') }" class="img-responsive" alt="" /></a>
				<p><center>${movie.get('moviename') }</center></p>   <!-- 电影名称 -->
				<font color="orange"><center>${movie.get('credit') }</center></font>    <!-- 电影评分 -->
		        </div>  
			</c:forEach>
	    	</div>       
		</div>  
		<br/>
		 <div class="clearfix"> </div>
		<br/>
		<%@ include file="page.jsp"%>
		<!-- box_2 -->
      </div>
   </div>
 </div>
 
<%@ include file="footer.jsp"%>

</body>
</html>