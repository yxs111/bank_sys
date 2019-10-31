<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.content{
		float: left;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
</head>
<body>

银行卡号：${user.bankcard}
<a href="javascript:logout()">退出</a>
<br />
<br />
<div id="content">
	<div class="content">
		<a href="list.jsp" target="contentFrame">银行信息查询</a>
	</div>
	<div class="content">
		<iframe name="contentFrame" width="800" height="500"></iframe>
	</div>
</div>


<script type="text/javascript">
	function logout(){
		$.ajax({
			type:"get",
			url:"logout.do",
			success:function(data){
				if(data.code == 1){
					window.location.href = "login.jsp";
				}else{
					alert(data.info);
				}
			}
		})
	}

</script>


</body>
</html>