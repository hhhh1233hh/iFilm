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
<title>首页</title>
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
	      <div class="slider">
	   <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li><img src="images/banner.jpg" class="img-responsive" alt=""/>
	        	<div class="button">
			      <a href="#" class="hvr-shutter-out-horizontal">Watch Now</a>
			    </div>
			</li>
	        <li><img src="images/banner1.jpg" class="img-responsive" alt=""/>
	        	<div class="button">
			      <a href="#" class="hvr-shutter-out-horizontal">Watch Now</a>
			    </div>
			</li>
	        <li><img src="images/banner2.jpg" class="img-responsive" alt=""/>
	        	<div class="button">
			      <a href="#" class="hvr-shutter-out-horizontal">Watch Now</a>
			    </div>
			</li>
	      </ul>
	    </div>
	    <div class="banner_desc">
			    	<div class="col-md-9">
			    		<ul class="list_1">
			    			<li>Published <span class="m_1">Feb 20, 2015</span></li>
			    			<li>Updated <span class="m_1">Feb 20 2015</span></li>
			    			<li>Rating <span class="m_1"><img src="images/rating.png" alt=""/></span></li>
			    		</ul>
			    	</div>
			    	<div class="col-md-3 grid_1">
			    		<ul class="list_1 list_2">
			    			<li><i class="icon1"> </i><p>2,548</p></li>
			    			<li><i class="icon2"> </i><p>215</p></li>
			    			<li><i class="icon3"> </i><p>546</p></li>
			    		</ul>
			    	</div>
			    </div>
      </div>
      
      
      <div class="content">
      
		
		<div class="box_1">
      	  <a href="high_point_pic.jsp"  class="high_point_pic"><h3><b>高分电影年代走势图</b></h3></a>
      	 <div class="search">
		    <a href="RecommendServlet" class="high_point_pic"><h5>点击查看我的个性化推荐>></h5></a>
		</div>
		<div class="clearfix"> </div>
		</div>
		
		<br/>
		<!-- 评分榜 -->
		<div class="box_1">
      	 <h1 class="m_2">评分榜</h1>
      	 <div class="search">
		   	<a href="PingFenAllServlet" class="high_point_pic"><h5>全部>></h5></a>
		</div>
		<div class="clearfix"> </div>
		
		
		</div>
		
		
		<div class="parentWrap">  
	   		<div class="parent" style="background-color: #edeff0;">  
		        
	        <c:forEach var="movie"   items="${requestScope.movies_credit }" begin="0"    end="9"><!-- 要迭代的list：movies_credit； 每一项：movie -->
		        
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
		<!-- 票房榜 -->
		<div class="box_1">
      	 <h1 class="m_2"s>票房榜</h1>
      	 <div class="search">
		   	<a href="PiaoFangAllServlet" class="high_point_pic"><h5>全部>></h5></a>
		</div>
		<div class="clearfix"> </div>
		</div>
		<div class="parentWrap">  
	   		<div class="parent" style="background-color: #edeff0;">  
	   		<ul>
	   		 <c:forEach var="movie"   items="${requestScope.movies_box }" begin="0"    end="9"><!-- 要迭代的list：movies_box； 每一项：movie -->
		        <li class="child" style="list-style-type: none">
		        <a href=""><img style="width:250px;height:289px;" src="${movie.get('link') }" class="img-responsive" alt="" /></a>
				<p><center>${movie.get('moviename')}</center></p>   <!-- 电影名称 -->
				<font color="orange"><center>${movie.get('box') }万</center></font>    <!-- 电影票房 -->
		        </li>  
			</c:forEach>
			</ul>
	    	</div>       
		</div>  
		<br/>
		<div class="clearfix"> </div>
		<br/>+
		<!-- 吐槽榜 -->
		<div class="box_1">
      	 <h1 class="m_2">吐槽榜</h1>
      	 <div class="search">
		   	<a href="TuCaoAllServlet" class="high_point_pic"><h5>全部>></h5></a>
		</div>
		<div class="clearfix"> </div>
		</div>
		<div class="parentWrap">  
	   		<div class="parent" style="background-color: #edeff0;"> 
	   		 <c:forEach var="movie"   items="${requestScope.movies_tc }" begin="0"    end="9"><!-- 要迭代的list：movies_tc； 每一项：movie -->
		        
		        <div class="child">
		        <a href="SingleServlet?movieitem=${movie.get('movieid') }"><img style="width:250px;height:289px;" src="${movie.get('link') }" class="img-responsive" alt="" /></a>
				<p><center>${movie.get('moviename') }</center></p>   <!-- 电影名称 -->
				<font color="orange"><center>${movie.get('credit') }</center></font>    <!-- 电影评分 -->
		        </div>  
			</c:forEach>
	    	</div>       
		</div>  
		<br/>
		</div> 
		<br/>
		
		<!-- box_2 -->
		
		
      </div>
   </div>
 </div>
 
<%@ include file="footer.jsp"%>

</body>
</html>