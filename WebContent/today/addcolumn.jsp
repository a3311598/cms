<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    	pageContext.setAttribute("path", path);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript">
	
			function success(){
					
						alert("添加栏目成功！");
				}
			
			
		
	</script> 
<title>添加栏目</title>
</head>
<body>
	<form action="${path}/addColumn">
		新闻类别：<input name="columnname" /><br/>
		<input type="submit" value="添加栏目" onclick="success()" />
	
	</form>
		
</body>
</html>