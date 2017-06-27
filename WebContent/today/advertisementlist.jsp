 <%@page import="com.mashen.admin.domain.Advertisement"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path=request.getContextPath();
pageContext.setAttribute("path",path);
%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body style="margin: 0px;padding: 0px;">
	<div style="width:100%;background:#eee;">
<div align="center" style="margin:0px auto ; width: 1200px;background: #efe;">
	
<style>
	.FontDiv{font:"微软雅黑";font-size:28px;margin: 0px;padding: 0px;}
	.InputText{width:400px;height:30px;border-radius:10px;border:3px solid #8e8;outline:medium;padding:0px 10px 0px 10px;font:'微软雅黑';font-size:20px;color:#f8b;}
	.Btn{width:400px;height:35px;border-radius:10px;border:0px solid #8f8;outline:medium;padding:0px 10px 0px 10px;font:'微软雅黑';font-size:24px;background:#bbf;color:#fff;}
</style>
		<div style="width:800px;margin:0px 0px 100px 0px;padding-top:100px;height:250px;background:#dff;">
<form action="${path }/AdAddServlet" method="Post" enctype="multipart/form-data">
<input type="text"  id="" name="addadvertisings"class="InputText" value="请 添 加 广 告 标 题"/><br>
<input type="file"  id="" name="addadLinks"class="InputText" style="width:376px;opacity:   0   ;background:#fff;filter:alpha(opacity=0);position:absolute;margin-left:-200px;margin-top:21px;"/><br>
<input type="button" value="选择图片" id="" name="" class="Btn" style="float:initial;"/><br /><br />
<input type="submit" value="增加" id="" name="" class="Btn"/>
</form><br>
 		</div>
<form action="${path }/AdaboutServlet" method="Post">
<input type="text"  id="" name="advertisings" class="InputText"/>
<input type="submit" value="查询" id="" name="" class="Btn"/>
</form>

<table cellspacing="0px" border="1x" bordercolor="#fff">
	<tr><th>Id</th><th>标题</th><th>图片</th><th>时间</th><th>删除</th></tr>
	<tbody>
	<c:forEach var="adTest" items="${adList}">
<form action="${path}/RmBtn" method="Post">
		<tr>
			<td>${adTest.id}</td>
			<td>${adTest.advertisings}</td>
			<td><img alt="" src="${adTest.adLinks}" height="100px"></td>
			<td>${adTest.creationtime}</td>
			<td><input type="hidden" id="" name="RmOne" value="${adTest.advertisings}"/><input type="submit" value="删除" id="" name=""/></td>
		</tr>
</form>
	</c:forEach>
	</tbody>
</table>

<%-- <form action="${path }/AdRmServlet" method="Post">
<!--<div class="FontDiv">删&nbsp;除&nbsp;广&nbsp;告:</div>-->
<input type="text"  id="" name="Rmadvertisings"class="InputText" value="请 输 入 删 除 广 告标 题" />
<input type="submit" value="删除" id="" name="" class="Btn"/>
</form> --%>

</div>
	</div>
</body>
</html>