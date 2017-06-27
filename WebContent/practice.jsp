<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--第1种用法：遍历一堆数字 --%>
<c:forEach begin="0" end="10" step="1" var="num">
${num }</br>
</c:forEach>
<%--第2种用法：遍历一个数组 --%>
<%
String[] colorArray = {"red","blue","yellow","green"};
//pageContext.setAttribute("colorArray", colorArray);
%>
<%-- <c:set value="${fn:split("red,blue,yellow,green",",") }" var="colorArray"></c:set>
<c:forEach items="${colorArray }" var="color">
${color }</br>
</c:forEach> --%>
<%--第3种用法：遍历一个集合 --%>
<%

List list = new ArrayList();
list.add("wangzongxing");
list.add("luowei");
list.add("luopeng");
request.setAttribute("list", list);
%>
<c:forEach items="${list }" var="str">
${str }<br>
</c:forEach>
<hr>
<c:forTokens items="${'zongxing,wengang,luopeng' }"  delims="," var="person" varStatus="status">
${status.index }   ->   ${person }   <br>
</c:forTokens>
<%-- <c:redirect url="http://www.baidu.com"></c:redirect> --%>

<c:import url="test.jsp">
	<c:param name="password" value="123456"></c:param>
</c:import>
<a href="http://www.baidu.com">百度</a>
<a href="<c:url value='http://www.baidu.com'></c:url>">百度</a>


<c:catch var="e">
<%int a = 5/0; %>
</c:catch>
${e }
</body>
</html>