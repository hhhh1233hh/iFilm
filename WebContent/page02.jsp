<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>分页</title>
<link rel="stylesheet" href="css/pagination.css">
</head>
<body>
<div class="pagination"></div>

<!-- CDN 依赖文件 --> 
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/underscore.js"></script> 
<script type="text/javascript" src="js/pagination.build.js"></script> 
<script type="text/javascript">
$(document).ready(function () {
	new pagination({
		pagination:$('.pagination'),
		maxPage: 7, //最大页码数,支持奇数，左右对称
		startPage: 1,    //默认第一页
		currentPage: 1,          //当前页码
		 totalItemCount: 10,    //项目总数,大于0，显示页码总数
		 totalPageCount: 20,        //总页数
		callback:function(pageNum){
			window.location.href="piaofangall.jsp?page="+pageNum;

		}
	});
	
});

</script>
${pageNum}
</body>
</html>