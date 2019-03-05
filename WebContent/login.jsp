<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
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
<script>
</script>
<div class="container">
	<div class="container_wrap">
	
		<%@ include file="header.jsp"%>
		
	      <div class="content">
      	     <div class="register">
			   <div class="col-md-6 login-left">
			  	 <h3>新用户</h3>
				 <p>快来创建你的第一个账户吧！</p>
				 <a class="acount-btn" href="register.jsp">创建账户</a>
			   </div>
			   <div class="col-md-6 login-right">
			  	<h3>已经注册过的用户</h3>
				<p>如果你已经有一个我们的账户，请登录！</p>
				<form action="Login" method="post">
				  <div class="register-top-grid">
					<span>ID<label>*</label></span>
					<input type="text" name="userid"> 
				  </div>
				  <div class="register-top-grid">
					<span>密码<label>*</label></span>
					<input type="password" name="password"> 
				  </div>
				  <a class="forgot" href="#">忘记密码？</a>
				  <input type="submit" value="登录">
			    </form>
			   </div>	
			   <div class="clearfix"> </div>
		     </div>
           </div>
    </div>
</div>
<%@ include file="footer.jsp"%>

</body>
</html>