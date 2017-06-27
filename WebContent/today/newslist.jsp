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
<title>文章管理</title>
</head>
<body>
<form action="${path}/searchNews">
<input type="text" name="headlline">
<button type="submit">查询</button>
<a href="http://localhost:8081/CMS/today/ueditor.jsp">新增</a>
</form>

<br>
<table border="1" cellpadding="0" cellspacing="0" bordercolor="blue">
	<tr>
	<th>ID</th>
	<th>类别ID</th>
	<th>标题ID</th>
	<th>访问量</th>
	<td>标题</td>
	<td>内容</td>
	<td>发表时间</td>
	<td>作者</td>
	<td>图片路径</td>
	<td>操作</td>
	</tr>
	<tbody>
	<c:forEach var="passage" items="${newList}">
		<tr>
		<td>${passage.id}</td>
		<td>${passage.categoryid}</td>
		<td>${passage.headlineid }</td>
		<td>${passage.viewcount}</td>
		<td>${passage.headline}</td>
		<td>${passage.content}</td>
		<td>${passage.creationtime}</td>
		<td>${passage.headname}</td>
		<td>${passage.thumb}</td>
		<td>${passage.headimg}</td>
		<td><a href="updateNews?id=${passage.id}">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="deleteNews?id=${passage.id}">删除</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>