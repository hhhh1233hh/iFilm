<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
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
	
table, th, td
  {
  border: 1px solid #3f444e;
  text-align:center;
  color:#3f444e;
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
		<div class="box_1">
      	 <h1 class="m_2">个人中心</h1>
      	 <div class="search" style="float:right">
	      	 <c:if test="${userinfo.get('vip')==0}"> 
			   	<a onclick="openResult()" class="high_point_pic"><h5>会员服务>></h5></a>
			 </c:if>
			 <c:if test="${userinfo.get('vip')==1}"> 
			   	<a href="vip_service.jsp" class="high_point_pic"><h5>会员服务>></h5></a>
			 </c:if>
		</div>
		</div>
				<div class="register">
						<div class="register-top-grid">
						
						<div style="width:100%;margin:0 auto;">
						
						</div>
							<div>
								<span>ID：${userinfo.get("userid")}</span> 
							</div>
							<div>
								<span>昵称：${userinfo.get("username")}</span> 
							</div>
							<div>
								<span>性别：${userinfo.get("gender")}</span>
							</div>
							<div>
								<span>生日：${userinfo.get("birth")}</span>
							</div>
							<div>
								<c:if test="${userinfo.get('vip')==0}"> 
			   						<span>权限：普通用户</span>
			 					</c:if>
			 					<c:if test="${userinfo.get('vip')==1}"> 
			   						<span>权限：vip用户</span>
			 					</c:if>
							</div>
							<div>
								<span>余额：${userinfo.get("balance")}<button onclick="chongzhi()" style="background-color:#C80000; border: none;  color: white; padding: 3px 12px;text-align: center;
    text-decoration: none; display: inline-block; font-size:13px; margin: 0px 2px; cursor: pointer;">充值</button></span> 
							</div>
							<div>
								<span>感兴趣的项：${userinfo.get("interest")}<button style="background-color: 	#C80000; border: none;  color: white; padding: 3px 12px;text-align: center;
    text-decoration: none; display: inline-block; font-size:13px; margin: 0px 2px; cursor: pointer;">编辑</button></span> 
							</div>
							
							<div class="clearfix"></div>


							<div class="clearfix"></div>
						
							<hr>
						
						</div>
						</div>
					
					<div class="clearfix"></div>
					<div class="box_1">
      	 <h1 class="m_2">订单信息</h1>
		</div><div class="clearfix"></div>
					<div style="width:100%;">
					
					<!--  -->
						<table style="width:100%;" >							
							<c:choose>
							<c:when test="${empty requestScope.orders}">
									您暂时没有消费信息哦~
							</c:when>
							<c:otherwise>
							<tr style="height:30px" >
								<td>订单号</td>
								<td>订单类型</td>
								<td>下单时间</td>
								<td>消费金额</td>
							</tr>
							<c:forEach items="${requestScope.orders}" var="o">
							<tr style="height:50px" ><!-- select from 数据库... -->
								<td>${o.get("orderid")}</td>
								<td>${o.get("type")}</td>
								<td>${o.get("price")}</td>
								<td>${o.get("time")}</td>
							</tr>
							</c:forEach>
							</c:otherwise>
							</c:choose>
							
						</table>
							
							<div class="clearfix"></div>
					
					
<script type="text/javascript">



function chongzhi()
{
var name=prompt("请输入您需要充值的金额","充值金额")
if (name!=null && name!="")
{
window.location.href="ChargeServlet?money="+name;
}
}


function openResult(){    /* 绑定事件 */
	var r = confirm("您还不是会员，充值10元即可升级会员，是否升级？")//跳转后台 扣除余额，修改权限
	if (r == true) {
	window.location.href="VipServlet";
	} else {
		window.location.href="user.jsp";
	}
} 
</script>
</body>
				</div>
			</div>
		</div>
	</div>

</body>
</html>