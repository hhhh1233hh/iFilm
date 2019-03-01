<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movie</title>
<style type="text/css">
.menu { 
font:12px verdana, arial, sans-serif; /* 设置文字大小和字体样式 */
}
.menu, .menu li {
float:left;
list-style:none; /* 将默认的列表符号去掉 */
padding:0; /* 将默认的内边距去掉 */
margin:0; /* 将默认的外边距去掉 */
}

.menu li a {
display:block; /* 将链接设为块级元素 */
width:150px; /* 设置宽度 */
height:30px; /* 设置高度 */
line-height:30px; /* 设置行高，将行高和高度设置同一个值，可以让单行文本垂直居中 */
text-align:center; /* 居中对齐文字 */
background:#3A4953; /* 设置背景色 */
color:#fff; /* 设置文字颜色 */
text-decoration:none; /* 去掉下划线 */
border-right:8px solid #fff; /* 在左侧加上分隔线 */
}

.menu li a:hover {
background:#146C9C; /* 变换背景色 */
color:#fff; /* 变换文字颜色 */
}
.menu li a.last {
border-right:0; /* 去掉左侧边框 */
}
</style>
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
</head>
<body>
<div class="container">
	<div class="container_wrap">
		<%@ include file="header.jsp"%>
	      <div class="content">


<!-- ================================================================= -->
<div style="width:100%">
<ul class="menu">
<li>menu</li>
 <li><a href="http://www.baidu.com">Baidu.Com</a></li>
 <li><a href="http://www.Code52.Net">Code52.Net</a></li>
 <li><a href="http://www.yahoo.com">Yahoo.Com</a></li>
 <li><a href="http://www.google.com" class="last">Google.Com</a></li>
</ul>

<ul class="menu">
<li>menu</li>
 <li><a href="http://www.baidu.com">Baidu.Com</a></li>
 <li><a href="http://www.Code52.Net">Code52.Net</a></li>
 <li><a href="http://www.yahoo.com">Yahoo.Com</a></li>
 <li><a href="http://www.google.com" class="last">Google.Com</a></li>
</ul>
</div>


</div>

<div class="clearfix"></div>

<!-- ================================================================= -->

 <div class="content">
	   	   <h2 class="m_3" >Now in the Movie</h1>
	   	   
	   	   
	   	   
      	       <div class="movie_top">
      	         <div class="col-md-9 movie_box">
                        <!-- Movie variant with time -->
                            <div class="movie movie-test movie-test-dark movie-test-left">
                                <div class="movie__images">
                                    <a href="single.html" class="movie-beta__link">
                                        <img alt="" src="images/1.jpg" class="img-responsive" alt=""/>
                                    </a>
                                </div>
								<div class="movie__info">
                                    <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                                    <p class="movie__time">80 min</p>
									<p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                                    <ul class="list_6">
						    			<li><i class="icon1"> </i><p>2,548</p></li>
						    			<li><i class="icon3"> </i><p>546</p></li>
						    			<li>Rating : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
						    			<div class="clearfix"> </div>
						    		</ul>
                                 </div>
                                <div class="clearfix"> </div>
                            </div>
                         <!-- Movie variant with time -->
						<!-- Movie variant with time -->
                            <div class="movie movie-test movie-test-dark movie-test-left">
                                <div class="movie__images">
                                    <a href="single.html" class="movie-beta__link">
                                        <img alt="" src="images/2.jpg" class="img-responsive" alt=""/>
                                    </a>
                                </div>
                                <div class="movie__info">
                                    <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                                    <p class="movie__time">80 min</p>
									<p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                                    <ul class="list_6">
						    			<li><i class="icon1"> </i><p>2,548</p></li>
						    			<li><i class="icon3"> </i><p>546</p></li>
						    			<li>Rating : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
						    			<div class="clearfix"> </div>
			    					</ul>
                                 </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="movie movie-test movie-test-light movie-test-right">
                               <div class="movie__images">
                                    <a href="single.html" class="movie-beta__link">
                                        <img alt="" src="images/3.jpg" class="img-responsive" alt=""/>
                                    </a>
                                </div>
                                <div class="movie__info">
                                    <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                                    <p class="movie__time">80 min</p>
									<p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                                    <ul class="list_6">
						    			<li><i class="icon1"> </i><p>2,548</p></li>
						    			<li><i class="icon3"> </i><p>546</p></li>
						    			<li>Rating : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
						    			<div class="clearfix"> </div>
			    					</ul>
                                 </div>
                                 <div class="clearfix"> </div>
                            </div>
                            <div class="movie movie-test movie-test-light movie-test-right">
                               <div class="movie__images">
                                    <a href="single.html" class="movie-beta__link">
                                        <img alt="" src="images/4.jpg" class="img-responsive" alt=""/>
                                    </a>
                                </div>
                                <div class="movie__info">
                                    <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                                    <p class="movie__time">80 min</p>
									<p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                                    <ul class="list_6">
						    			<li><i class="icon1"> </i><p>2,548</p></li>
						    			<li><i class="icon3"> </i><p>546</p></li>
						    			<li>Rating : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
						    			<div class="clearfix"> </div>
			    					</ul>
                                 </div>
                                 <div class="clearfix"> </div>
                            </div>
                            <div class="movie movie-test movie-test-dark movie-test-left">
                                <div class="movie__images">
                                    <a href="single.html" class="movie-beta__link">
                                        <img alt="" src="images/5.jpg" class="img-responsive" alt=""/>
                                    </a>
                                </div>
								<div class="movie__info">
                                    <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                                    <p class="movie__time">80 min</p>
									<p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                                    <ul class="list_6">
						    			<li><i class="icon1"> </i><p>2,548</p></li>
						    			<li><i class="icon3"> </i><p>546</p></li>
						    			<li>Rating : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
						    			<div class="clearfix"> </div>
						    		</ul>
                                 </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="movie movie-test movie-test-dark movie-test-left">
                                <div class="movie__images">
                                    <a href="single.html" class="movie-beta__link">
                                        <img alt="" src="images/6.jpg" class="img-responsive" alt=""/>
                                    </a>
                                </div>
								<div class="movie__info">
                                    <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                                    <p class="movie__time">80 min</p>
									<p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                                    <ul class="list_6">
						    			<li><i class="icon1"> </i><p>2,548</p></li>
						    			<li><i class="icon3"> </i><p>546</p></li>
						    			<li>Rating : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
						    			<div class="clearfix"> </div>
						    		</ul>
                                 </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="movie movie-test movie-test-light movie-test-right">
                               <div class="movie__images">
                                    <a href="single.html" class="movie-beta__link">
                                        <img alt="" src="images/7.jpg" class="img-responsive" alt=""/>
                                    </a>
                                </div>
                                <div class="movie__info">
                                    <a href="#" class="movie__title">Ipsum (2015)  </a>
                                    <p class="movie__time">80 min</p>
									<p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                                    <ul class="list_6">
						    			<li><i class="icon1"> </i><p>2,548</p></li>
						    			<li><i class="icon3"> </i><p>546</p></li>
						    			<li>Rating : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
						    			<div class="clearfix"> </div>
			    					</ul>
                                 </div>
                                 <div class="clearfix"> </div>
                            </div>
                            <div class="movie movie-test movie-test-light movie-test-right">
                               <div class="movie__images">
                                    <a href="single.html" class="movie-beta__link">
                                        <img alt="" src="images/8.jpg" class="img-responsive" alt=""/>
                                    </a>
                                </div>
                                <div class="movie__info">
                                    <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                                    <p class="movie__time">80 min</p>
									<p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                                    <ul class="list_6">
						    			<li><i class="icon1"> </i><p>2,548</p></li>
						    			<li><i class="icon3"> </i><p>546</p></li>
						    			<li>Rating : &nbsp;&nbsp;<p><img src="images/rating1.png" alt=""></p></li>
						    			<div class="clearfix"> </div>
			    					</ul>
                                 </div>
                                 <div class="clearfix"> </div>
                            </div>   
                              <div class="clearfix"> </div>                         
                         <!-- Movie variant with time -->
                      </div>
                      <div class="col-md-3">
                      	<div class="movie_img"><div class="grid_2">
							<img src="images/pic6.jpg" class="img-responsive" alt="">
							<div class="caption1">
									<ul class="list_5 list_7">
							    		<li><i class="icon5"> </i><p>3,548</p></li>
							    	</ul>
							    	<i class="icon4 icon6 icon7"> </i>
							    	<p class="m_3">Guardians of the Galaxy</p>
							</div>
						    </div>
						   </div>
                      	  <div class="grid_2 col_1">
							<img src="images/pic2.jpg" class="img-responsive" alt="">
							<div class="caption1">
								<ul class="list_3 list_7">
						    		<li><i class="icon5"> </i><p>3,548</p></li>
						    	</ul>
						    	<i class="icon4 icon7"> </i>
						    	<p class="m_3">Guardians of the Galaxy</p>
							</div>
						   </div>
						    <div class="grid_2 col_1">
							<img src="images/pic9.jpg" class="img-responsive" alt="">
							<div class="caption1">
								<ul class="list_3 list_7">
						    		<li><i class="icon5"> </i><p>3,548</p></li>
						    	</ul>
						    	<i class="icon4 icon7"> </i>
						    	<p class="m_3">Guardians of the Galaxy</p>
							</div>
						   </div>
		               </div> 
                      <div class="clearfix"> </div>
                  </div>
                  <h1 class="recent">Recently Viewed</h3>
                   <ul id="flexiselDemo3">
						<li><img src="images/1.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Syenergy 2mm</a><p>22.10.2014 | 14:40</p></div></li>
						<li><img src="images/2.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Surf Yoke</a><p>22.01.2015 | 14:40</p></div></li>
						<li><img src="images/3.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Salty Daiz</a><p>22.10.2013 | 14:40</p></div></li>
						<li><img src="images/4.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Cheeky Zane</a><p>22.10.2014 | 14:40</p></div></li>
						<li><img src="images/5.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Synergy</a><p>22.10.2013 | 14:40</p></div></li>
				    </ul>
				    <script type="text/javascript">
					 $(window).load(function() {
						$("#flexiselDemo3").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
					    	responsiveBreakpoints: { 
					    		portrait: { 
					    			changePoint:480,
					    			visibleItems: 1
					    		}, 
					    		landscape: { 
					    			changePoint:640,
					    			visibleItems: 2
					    		},
					    		tablet: { 
					    			changePoint:768,
					    			visibleItems: 3
					    		}
					    	}
					    });
					    
					});
				   </script>
				   <script type="text/javascript" src="js/jquery.flexisel.js"></script>
				   <ul id="flexiselDemo1">
						<li><img src="images/8.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Syenergy 2mm</a><p>22.10.2014 | 14:40</p></div></li>
						<li><img src="images/7.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Surf Yoke</a><p>22.01.2015 | 14:40</p></div></li>
						<li><img src="images/6.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Salty Daiz</a><p>22.10.2013 | 14:40</p></div></li>
						<li><img src="images/1.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Cheeky Zane</a><p>22.10.2014 | 14:40</p></div></li>
						<li><img src="images/2.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Synergy</a><p>22.10.2013 | 14:40</p></div></li>
				     </ul>
				    <script type="text/javascript">
					 $(window).load(function() {
						$("#flexiselDemo1").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
					    	responsiveBreakpoints: { 
					    		portrait: { 
					    			changePoint:480,
					    			visibleItems: 1
					    		}, 
					    		landscape: { 
					    			changePoint:640,
					    			visibleItems: 2
					    		},
					    		tablet: { 
					    			changePoint:768,
					    			visibleItems: 3
					    		}
					    	}
					    });
					    
					});
				   </script>
		  </div>
</div>
</div>
<div class="container"> 
 <footer id="footer">
 	<div id="footer-3d">
		<div class="gp-container">
			<span class="first-widget-bend"></span>
		</div>		
	</div>
    <div id="footer-widgets" class="gp-footer-larger-first-col">
		<div class="gp-container">
            <div class="footer-widget footer-1">
            	<div class="wpb_wrapper">
					<img src="images/f_logo.png" alt=""/>
				</div> 
	          <br>
	          <p>It is a long established fact that a reader will be distracted by the readable content of a page.</p>
			  <p class="text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered.</p>
			 </div>
			 <div class="footer_box">
			  <div class="col_1_of_3 span_1_of_3">
					<h3>Categories</h3>
					<ul class="first">
						<li><a href="#">Dance</a></li>
						<li><a href="#">History</a></li>
						<li><a href="#">Specials</a></li>
					</ul>
		     </div>
		     <div class="col_1_of_3 span_1_of_3">
					<h3>Information</h3>
					<ul class="first">
						<li><a href="#">New products</a></li>
						<li><a href="#">top sellers</a></li>
						<li><a href="#">Specials</a></li>
					</ul>
		     </div>
		     <div class="col_1_of_3 span_1_of_3">
					<h3>Follow Us</h3>
					<ul class="first">
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">Youtube</a></li>
					</ul>
					<div class="copy">
				      <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			        </div>
		     </div>
		    <div class="clearfix"> </div>
	        </div>
	        <div class="clearfix"> </div>
		</div>
	</div>
  </footer>
</div>		
</body>
</html>