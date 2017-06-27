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
<title>Insert title here</title>
<!--1.引入js文件  -->
	<script type="text/javascript" charset="utf-8" src="../utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="../utf8-jsp/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="../utf8-jsp/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
	<form action="${path }/addNews" method="post" enctype="multipart/form-data">
		标题：<input type="text" name="headline"><br>
		类型：<select name="categoryid">
		<option value="10">热点</option>
		<option value="10">视频</option>
		<option value="11">图片</option>
		<option value="12">段子</option>
		<option value="12">社会</option>
		<option value="12">娱乐</option>
		<option value="12">科技</option>
		<option value="12">体育</option>
		<option value="12">汽车</option>
		<option value="12">财经</option>
		<option value="12">搞笑</option>
		<option value="12">更多</option>
		</select><br>
		<input type="file" value="选择文件" name="thumb">
		<script id="editor" type="text/plain" style="width:1024px;height:500px;" name="content"></script>
		<input type="submit" value="提交" />
	</form>
</body>
<script type="text/javascript">
	/*3.初始化编辑器  */
	var ue = UE.getEditor('editor');
</script>
</html>