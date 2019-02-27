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
	 function fun(obj){
		    obj.value = "";
		    obj.type = "password";
		}
	 function changeColor(){
		 var color = document.getElementById('xiju');
		 color.style.background=red;
		}
</script>
<style type="text/css">
label {
                font-size: 18px;
                cursor: pointer;
                width:130px
            }

            label i {
                font-size: 20px;
                font-style: normal;
                display: inline-block;
                width: 25px;
                height: 25px;
                text-align: center;
                line-height: 20px;
                color: #fff;
                vertical-align: middle;
                margin: -2px 2px 1px 0px;
                border: #cc0000 1px solid;
            }

            input[type="checkbox"],
            input[type="radio"] {
                display: none;
            }

            input[type="radio"]+i {
                border-radius: 7px;
            }

            input[type="checkbox"]:checked+i,
            input[type="radio"]:checked+i {
                background: #cc0000;
            }
</style>
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
			<%@ include file="header.jsp"%>
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
								<span>密码<label>*</label></span> <input type="text" name="password">
							</div>
							<div>
								<span>确认密码<label>*</label></span> <input type="text">
							</div>
							
							<div class="clearfix"></div>


							<div class="clearfix"></div>
						
							<a class="news-letter" href="#">
							</a>
							<hr>
						<h3>请选择您感兴趣的标签项：</h3>
						
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   喜剧
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						    动作
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   爱情
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   犯罪
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   惊悚
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   历史
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   悬疑
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						    冒险
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   战争
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   奇幻
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   家庭
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   古装
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   科幻
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   动画
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   歌舞
						</label>
						<label>
					    <input type="checkbox">
						    <i>✓</i>
						   传记
						</label>
						<br/>
						</div>
						
					
					<div class="clearfix"></div>
					<div class="register-but">
						<br/>
							<input type="submit" style="background-color: 	#C80000; border: none;  color: white; padding: 10px 32px;text-align: center;
    text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; cursor: pointer;" value="提交">
							<div class="clearfix"></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>