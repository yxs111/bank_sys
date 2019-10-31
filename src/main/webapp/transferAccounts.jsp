<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>添加信息</title>
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
			<h3>当前操作，转账请输入转入账号和金额后点击“转账”按钮</h3>
			<form action="查询所有.html" method="post" onsubmit=" return false">
				<table border="1">
					<tr>
						<th>转入账号</th>
						<td><input type="text" name="name" /></td>
					</tr>

					<tr>
						<th>转账金额</th>
						<td><input type="text" name="age" /></td>
					</tr>

					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="转账" />&nbsp;
							<%--<input type="reset" value="重置" /></td>--%>
					</tr>
				</table>
			</form>
		</div>
	<script type="text/javascript">
		$("form").submit(function(){
			$.ajax({
				type:"post",
				url:"ssm/add.do",
				data:$("form").serialize(),
				dataType:"json",
				success:function(data){
					if(data.code == 1){
						window.location.href = "list.jsp";
					}else{
						alert(data.info);
					}
				}
			})
			//return false;
		})
	</script>

	</body>

</html>