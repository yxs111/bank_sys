<%@page import="com.qfedu.pojo.User"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>修改信息</title>
		<style type="text/css">
			table {
				width: 300px;
				border-collapse: collapse;
			}
			
			h3 {
				text-align: center;
			}
			
			div {
				margin: 0 auto;
				width: 300px;
			}
		</style>
		<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
	</head>

	<body>
		<div>
			<h3>您的账户余额是：</h3><br/>

			

		</div>

		<script type="text/javascript">

			$ ("form").submit (function() {
				$.ajax({
					type:"post",
					url:"ssm/upd.do" + window.location.search,
					data:$("form").serialize(),
					dataType:"json",
					success:function (data) {
						if (data.code==1){
							window.location.href = "list.jsp";
						}else {
							alert(data.info);
						}
					}
				})
			})
		</script>
	</body>

</html>