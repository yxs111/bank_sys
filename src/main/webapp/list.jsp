<%@page import="com.qfedu.pojo.User"%>
<%@page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>银行系统</title>
		<style type="text/css">
			table td {
				text-align: center;
			}
			/*合并表格的边框*/
			
			table {
				width: 700px;
				border-collapse: collapse;
			}
			
			h3 {
				text-align: center;
			}
			
			div {
				margin: 0 auto;
				width: 700px;
			}
		</style>
		<script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
	</head>

	<body>
		<div>
			<h3>欢迎使用个人网上银行</h3>
			 <a href="selectBalance.jsp">查询余额</a>&nbsp;
		 <a href="transferAccounts.jsp">转账</a>&nbsp;
		 <a href="selectRecords.jsp">查询交易记录</a>&nbsp;
		 <a href="updatePassword.jsp">修改密码</a>


		</div>


	</body>

</html>