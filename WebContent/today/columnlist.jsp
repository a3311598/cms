<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
    		String path=request.getContextPath();
 			pageContext.setAttribute("path", path);   
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>栏目管理</title>
</head>
<body>
<form action="${path}/searchColumn">
<input type="text" name="columnname">
<button type="submit">查询</button>
<a href="today/addcolumn.jsp">新增</a>
</form>


<table border="1" cellpadding="0" cellspacing="0" bordercolor="blue">
	<tr>
	<th>ID</th>
	<th>类别</th>
	<th>操作</th>
	</tr>
	<tbody>
	<c:forEach var="column" items="${colList}">
		<tr>
		<td>${column.id}</td>
		<td><input size=4 name="columnname" value="${column.columnname} "/></td>
		<td><a href="today/updatecolumn.jsp?id=${column.id}">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="deleteColumn?id=${column.id}">删除</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>