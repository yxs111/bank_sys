<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
</head>
<body>
<form action="login.do" method="post" onsubmit="return false;">
	银行号<input type="text" name="bankcard" /><br />
	密码<input type="password" name="password" /><br />
	<input type="submit" value="登录" />
</form>

<script type="text/javascript">
	$("form").submit(function(){
		$.ajax({
			type:"post",
			url:"login.do",
			data:$("form").serialize(),
			dataType:"json",
			success:function(data){
				if(data.code == 1){
					window.location.href = "index.jsp";
				}else{
					alert(data.info);
				}
			}
			
			
			
		})
	})

</script>


</body>
</html>