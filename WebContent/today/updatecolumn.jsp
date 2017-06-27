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
					
						alert("修改栏目成功！");
				}
			
			
		
	</script> 
<title>修改栏目</title>
</head>
<body>
	<form action="${path}/updateColumn">
		ID:<input name="id" value="${param.id}"/><br/>
		新闻类别：<input name="columnname" /><br/>
		<input type="submit" value="修改栏目" onclick="success()" />
	
	</form>
		
</body>
</html>