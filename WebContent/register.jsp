<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
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
</head>
<body>
	<div class="container">
		<div class="container_wrap">
			<div class="header_top">
				<div class="col-sm-3 logo">
					<a href="index.html"><img src="images/logo1.png" alt="" /></a>
				</div>
				<div class="col-sm-6 nav">
					<ul>
						<li><span class="simptip-position-bottom simptip-movable"
							data-tooltip="comic"><a href="movie.html"> </a></span></li>
						<li><span class="simptip-position-bottom simptip-movable"
							data-tooltip="movie"><a href="movie.html"> </a> </span></li>
						<li><span class="simptip-position-bottom simptip-movable"
							data-tooltip="video"><a href="movie.html"> </a></span></li>
						<li><span class="simptip-position-bottom simptip-movable"
							data-tooltip="game"><a href="movie.html"> </a></span></li>
						<li><span class="simptip-position-bottom simptip-movable"
							data-tooltip="tv"><a href="movie.html"> </a></span></li>
						<li><span class="simptip-position-bottom simptip-movable"
							data-tooltip="more"><a href="movie.html"> </a></span></li>
					</ul>
				</div>
				<div class="col-sm-3 header_right">
					<ul class="header_right_box">

						<li class="last"><i class="edit"> </i></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="content">
				<div class="register">
					<form action="UserRegister" method="post">
						<div class="register-top-grid">
							<h3>个人信息</h3>
							<div>
								<span>昵称<label>*</label></span> <input type="text"
									name="username">
							</div>
							<div>
								<span>性别<label>*</label></span> <input type="text" name="gender">
							</div>
							<div>
								<span>生日<label>*</label></span> <input type="text" name="birth">
							</div>
							<div>
								<span>邮箱<label>*</label></span> <input type="text" name="email">
							</div>
							<div>
								<span>密码<label>*</label></span> <input type="password"
									name="password">
							</div>
							<div>
								<span>确认密码<label>*</label></span> <input type="password">
							</div>
							<div class="clearfix"></div>


							<div class="clearfix"></div>
							<a class="news-letter" href="#"> <label class="checkbox"><input
									type="checkbox" name="checkbox" checked=""><i> </i>我同意此用户协议</label>
							</a>
						</div>
						
					
					<div class="clearfix"></div>
					<div class="register-but">
						
							<input type="submit" style="background-color: 	#C80000; border: none;  color: white; padding: 10px 32px;text-align: center;
    text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; cursor: pointer;" value="提交">
							<div class="clearfix"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<footer id="footer">
		<div id="footer-3d">
			<div class="gp-container">
				<span class="first-widget-bend"> </span>
			</div>
		</div>
		<div id="footer-widgets" class="gp-footer-larger-first-col">
			<div class="gp-container">
				<div class="footer-widget footer-1">
					<div class="wpb_wrapper">
						<img src="images/f_logo.png" alt="" />
					</div>
					<br>
					<p>It is a long established fact that a reader will be
						distracted by the readable content of a page.</p>
					<p class="text">There are many variations of passages of Lorem
						Ipsum available, but the majority have suffered.</p>
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
							<p>
								Copyright &copy; 2015.Company name All rights reserved.<a
									target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
							</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</footer>
	</div>
</body>
</html>