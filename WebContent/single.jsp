<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>详情页</title>
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
      	   <div class="movie_top">
      	         <div class="col-md-9 movie_box">
                        <div class="grid images_3_of_2">
                        	<div class="movie_image">

                                <img style="width:300px;" src="${movieinfo.get('link')}" class="img-responsive" alt=""/>
                            </div>
                            <div class="movie_rate">
                            	<div class="rating_desc"><p>Your Vote :</p></div>
                            	<form action="EvaluateServlet?thisid=${param.movieitem}" class="sky-form" method="POST">
							     <fieldset>					
								   <section>
								     <div class="rating">
										<input type="radio" name="stars-rating5" id="stars-rating-5">
										<label for="stars-rating-5"><i class="icon-star"></i></label>
										<input type="radio" name="stars-rating4" id="stars-rating-4">
										<label for="stars-rating-4"><i class="icon-star"></i></label>
										<input type="radio" name="stars-rating3" id="stars-rating-3">
										<label for="stars-rating-3"><i class="icon-star"></i></label>
										<input type="radio" name="stars-rating2" id="stars-rating-2">
										<label for="stars-rating-2"><i class="icon-star"></i></label>
										<input type="radio" name="stars-rating1" id="stars-rating-1">
										<label for="stars-rating-1"><i class="icon-star"></i></label>
										
										<a href=""><button type="submit" style="background-color: 	#C80000; border: none;  color: white; padding: 3px 12px;text-align: center;
    text-decoration: none; display: inline-block; font-size:15px; margin: 3px 5px; cursor: pointer;">提交</button></a>
									 </div>
								  </section>
							    </fieldset>
						  	   </form>
						  	   <div class="clearfix"> </div>
                            </div>
                        </div>
                        <div class="desc1 span_3_of_2">
                        	<p class="movie_option"><strong>名称：${movieinfo.get("moviename")}</strong></p>                       	
                        	<p class="movie_option"><strong>导演：${movieinfo.get("director")} </strong></p>
                        	<p class="movie_option"><strong>主演： ${movieinfo.get("actor")}</strong></p>
                        	<p class="movie_option"><strong>类型：${movieinfo.get("type")}</strong></p>
                        	<p class="movie_option"><strong>评分：${movieinfo.get("credit")}</strong></p>
                        	<p class="movie_option"><strong>年代：${movieinfo.get("year")} </strong></p>
                        		<p class="movie_option"><strong>简介：${movieinfo.get("abstract")}</strong></p>
                            
                         </div>
                        <div class="clearfix"> </div>
                       
		                <form method="post" action="contact-post.html">
							
							
			              
							<div class="clearfix"></div>
                 		</form>
		                <div class="single">
		                <ul class="single_list">					      					       					   
			  			</ul>
                      </div>
                      </div>
                      <div class="col-md-3">
                      	
						   </div>
                      	 
						  
		               </div> 
                      <div class="clearfix"> </div>
                  </div>
           </div>
    </div>
</div>
<%@ include file="footer.jsp"%>

</body>
</html>