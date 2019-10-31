<%@page import="com.qfedu.pojo.User"%>
<%@page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>所有员工信息</title>
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
			<h3>当前操作，查询交易记录，请选择时间范围后点击“查询”按钮</h3>
			<form action="查询所有.html" method="post" onsubmit=" return false">
				<table border="1">
					<tr>
						<th>查询日期范围</th>
						<td><input type="text" name="datetime" /></td>
						<th>到</th>
						<td><input type="text" name="datetime2" /></td>
					</tr>

					<%--<tr>--%>
						<%--<th>转账金额</th>--%>
						<%--<td><input type="text" name="age" /></td>--%>
					<%--</tr>--%>

					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="查询" />&nbsp;
							<%--<input type="reset" value="重置" /></td>--%>
					</tr>
				</table>
			</form>
		</div>


	</body>

</html>