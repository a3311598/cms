<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
    	String path = request.getContextPath();
    	pageContext.setAttribute("path", path);
    	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
		<meta charset="utf-8" />

		<meta name="x-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="dist/css/userlogin.css" />
		<style type="text/css">
			.loginBox {
				position: absolute;
				top: 230px;
				left: 50%;
				margin-left: -200px;
				width: 300px;
				padding: 28px 50px 38px;
				background-color: #fff;
				background-color: rgba(255, 255, 255, .9);
			}
		
			
			body {
				background-image: url(img/登录背景.png);
			}
			
			.slogan-wrap img {
				position: absolute;
				left: 50%;
				margin-left: -275px;
				top: 10px;
				width: 550px;
				height: 385px;
			}
			
			.logo-wrap img {
				display: inline-block;
				position: absolute;
				top: 16px;
				left: 16px;
				width: 110px;
				height: 27px;
			}
			
			#inputaccount3,#inputPassword3 {
				width: 300px;
				height: 32px;
				margin-bottom: 8px;
			}
			
			.action-btn {
				color: #fff;
				font-size: 18px;
				line-height: 42px;
				width: 300px;
				text-align: center;
				background-color: #f85959;
				margin-top: 10px;
				margin-bottom: 40px;
				cursor: pointer;
			}
			
			.sns-login .sns {
				position: relative;
				display: inline-block;
				width: 40px;
				height: 40px;
				margin-left: 10px;
				cursor: pointer;
				background-repeat: no-repeat;
			}
		</style>

	</head>
<body>
		<div class="content">
			<a class="logo-wrap" href="http://www.toutiao.com/"><img src="img/今日头条.png" alt=""></a>
			<div class="slogan-wrap"><img src="img/你关心的就是头条.png" alt=""></div>
			<div riot-tag="loginBox" class="loginBox">
				<form action="${path}/register" class="form-horizontal" method="post">
					<div class="form-group">
						<label class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							账号：<input type="text" name="account" class="form-control" id="inputaccount3"  required="required" pattern="[a-z0-9_-]{3,16}" title="账户应为3-16位字符">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							密码：<input type="password" name="pwd" class="form-control" id="inputPassword3" required="required" pattern="[a-z0-9_-]{6,18}" title="密码应为6-18位字符">
						</div>
					</div>
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							头像：<input type="file" name="headportrait" class="form-control" id="inputPassword3" required="required">
						</div>
					</div> -->
					<div class="form-group">
						<label class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							姓名：<input type="text" name="name" class="form-control" id="inputPassword3"  required="required" maxlength="10" >
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							邮箱：<input type="text" name="email" class="form-control Validator" id="inputPassword3" required="required" pattern="([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})" title="请输入正确的邮箱地址">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<!-- <div class="checkbox">
								<label>
         							 <input type="checkbox"> 一个月内免登陆
      							  </label>
							</div> -->
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" name="submitBtn" class="action-btn btn-danger" value="注册" />
						</div>
					</div>
				</form>
				<ul class="sns-login">
					<li data-pid="mail_phone" class="sns  mail-login"> <span>账号</span> </li>
					<li class="sns weibo-login" data-pid="sina_weibo"> <span>微博</span> </li>
					<li class="sns qq-login" data-pid="qzone_sns"> <span>QQ</span> </li>
					<li class="sns weixin-login" data-pid="weixin"> <span>微信</span> </li>
				</ul>
			</div>
		</div>
		</div>
		<script type="text/javascript" src="dist/js/jquery-3.2.1.js" charset="UTF-8"></script>
		<script type="text/javascript" src="dist/js/bootstrap.js" charset="UTF-8"></script>
	</body>

</html>