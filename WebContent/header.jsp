<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
</head>
<body>


<div class="header_top">
		    <div class="col-sm-3 logo"><a href="index.html"><img src="images/logo1.png" alt=""/></a></div>
		    <div class="col-sm-6 nav">
			  <ul>
				 <li> <span class="simptip-position-bottom simptip-movable" data-tooltip="首页"><a href="index1.jsp"> </a></span></li>
				 <li><span class="simptip-position-bottom simptip-movable" data-tooltip="全部电影"><a href="MoviesServlet"> </a> </span></li>

				 <li><span class="simptip-position-bottom simptip-movable" data-tooltip="个人中心"><a href="UserServlet"> </a></span></li>
				 <li><span class="simptip-position-bottom simptip-movable" data-tooltip="联系我们"><a href="info.jsp"> </a></span></li>
			 </ul>
			</div>
			<div class="col-sm-3 header_right" >
			   <ul class="header_right_box" style="float:right">
			   
			<c:if test="${sessionScope.userid ==null}"> 
				 <li ><p><a href="register.jsp">注册</a></p></li>
				 <li ><p><a href="login.jsp">登录</a></li>
			</c:if>
			<c:if test="${sessionScope.userid!=null}"> 
				 <li ><p><a href="UserServlet">id:${userid }</a> <a href="UserServlet">${username }</a></p></li>
				 <li ><p><a style="font-size: 12px;" href="LogoutServlet">退出登录</a></li>
			</c:if> 
				 <div class="clearfix"> </div>
			   </ul>
			</div>
           <!-- 搜索框 -->
			<div class="search" style="margin:12px 0px">
		    <form>
				<input type="text" value="请输入电影名称..." onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
				<input type="submit" value="">
		    </form>
		</div>
		
			<div class="clearfix"> </div>
			
	      </div>
      	
		
	      
	      
</body>
</html>