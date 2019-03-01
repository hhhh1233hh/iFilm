<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
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
<script>
function validate() {
    var pwd1 = document.getElementById("pwd").value;
    var pwd2 = document.getElementById("pwd1").value;
    if(pwd1 == pwd2)
     {
        document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
        document.getElementById("tijiao").disabled = false;
     }
else {
        document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
        document.getElementById("tijiao").disabled = true;
     }
}

function check(form) {
	var username = form.username.value;
	var password = form.password.value;
    if(username.length==0)
     {
    	form.username.focus();
        document.getElementById("tishi").innerHTML="<font color='red'>用户名不能为空</font>";
        document.getElementById("tijiao").disabled = true;
		return false;
     }
    if(password.length==0)
    {
   	form.password.focus();
       document.getElementById("tishi").innerHTML="<font color='red'>密码不能为空</font>";
       document.getElementById("tijiao").disabled = true;
		return false;
    }
    
}
</script>
	<div class="container">
		<div class="container_wrap">
			<%@ include file="header.jsp"%>
			<div class="content">
				<div class="register">
					<form action="UserRegister" method="post" onSubmit="return check(this);">
						<div class="register-top-grid">
							<h3>个人信息</h3>
							<div><!-- 英文字母 中文字幕 阿拉伯数组 不为空 -->
								<span>昵称<label>*</label></span> <input type="text"	name="username" >
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
								<span>密码<label>*</label></span> <input id="pwd" type="password" name="password">
							</div>
							<div>
								<span>确认密码<label>*</label></span> <input id="pwd1" type="password" onkeyup="validate()">
							</div>
							<div>
<span id="tishi"></span>
							</div>
							
							<div class="clearfix"></div>

							<div class="clearfix"></div>
						
							<a class="news-letter" href="#">
							</a>
							<hr>
						<h3>请选择您感兴趣的标签项：</h3>
						<label>
					    <input type="checkbox" name="tag" value="1" >
						    <i>✓</i>
						   喜剧
						</label>
						<label>
					    <input type="checkbox" name="tag" value="2">
						    <i>✓</i>
						    动作
						</label>
						<label>
					    <input type="checkbox" name="tag" value="3">
						    <i>✓</i>
						   爱情
						</label>
						<label>
					    <input type="checkbox" name="tag" value="4">
						    <i>✓</i>
						   犯罪
						</label>
						<label>
					    <input type="checkbox" name="tag" value="5">
						    <i>✓</i>
						   惊悚
						</label>
						<label>
					    <input type="checkbox" name="tag" value="6">
						    <i>✓</i>
						   历史
						</label>
						<label>
					    <input type="checkbox" name="tag" value="7">
						    <i>✓</i>
						   悬疑
						</label>
						<label>
					    <input type="checkbox" name="tag" value="8">
						    <i>✓</i>
						    冒险
						</label>
						<label>
					    <input type="checkbox" name="tag" value="9">
						    <i>✓</i>
						   战争
						</label>
						<label>
					    <input type="checkbox" name="tag" value="10">
						    <i>✓</i>
						   奇幻
						</label>
						<label>
					    <input type="checkbox" name="tag" value="11">
						    <i>✓</i>
						   家庭
						</label>
						<label>
					    <input type="checkbox" name="tag" value="12">
						    <i>✓</i>
						   古装
						</label>
						<label>
					    <input type="checkbox" name="tag" value="13">
						    <i>✓</i>
						   科幻
						</label>
						<label>
					    <input type="checkbox" name="tag" value="14">
						    <i>✓</i>
						   动画
						</label>
						<label>
					    <input type="checkbox" name="tag" value="15">
						    <i>✓</i>
						   歌舞
						</label>
						<label>
					    <input type="checkbox" name="tag" value="16">
						    <i>✓</i>
						   传记
						</label>
						<br/>
						</div>
						
					
					<div class="clearfix"></div>
					<div class="register-but">
						<br/>
							<input type="submit" id="tijiao" style="background-color: 	#C80000; border: none;  color: white; padding: 10px 32px;text-align: center;
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