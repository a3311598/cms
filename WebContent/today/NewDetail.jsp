<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<!--ie8以上的，优先使用edge的内核-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--
			视口
		-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" type="text/css" href="dist/css/bootstrap.css" />
<link rel="stylesheet" href="css/yemian.css" />
</head>

<body style="background: #fff;">
	<nav class="navbar navbar-inverse clearfix navbar-static-top">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand visible-xs" href="#">今日头条</a>
		</div>
		<ul class="nav navbar-nav collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<li><a href="#">推荐 </a></li>
			<li><a href="#">热点 </a></li>
			<li><a href="#">视频 </a></li>
			<li><a href="#">图片 </a></li>
			<li><a href="#">段子 </a></li>
			<li><a href="#">社会 </a></li>
			<li><a href="#">娱乐 </a></li>
			<li><a href="#">科技 </a></li>
			<li><a href="#">汽车 </a></li>
			<li><a href="#">体育 </a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false" id="tianqi" style="height: 34px;">更多</a>
				<ul class="dropdown-menu"
					style="width: 10px; background: #fff; margin: 0px; min-width: 70px; border-radius: 0px; border: 0px; margin-top: 0px;">
					<li><a href="#">财经 </a></li>
					<li><a href="#">军事 </a></li>
					<li><a href="#">国际 </a></li>
					<li><a href="#">时尚 </a></li>
					<li><a href="#">旅游 </a></li>
					<li><a href="#">探索 </a></li>
					<li><a href="#">育儿 </a></li>
					<li><a href="#">养生</a></li>
					<li><a href="#">故事</a></li>
					<li><a href="#">游戏 </a></li>
					<li><a href="#">历史 </a></li>
					<li><a href="#">美食 </a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav navbar-right hidden-sm hidden-xs">
			<li><a href="#" id="denglu">登录</a></li>
			<li><a href="#">反馈</a></li>
			<li><a href="#">投诉侵权</a></li>
			<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"
				role="button" aria-haspopup="true" aria-expanded="false"
				id="toutiao">头条产品</a>
				<ul class="dropdown-menu">
					<li><a href="#">问答</a></li>
					<li><a href="#">头条号</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">图圈</a></li>
					<li><a href="#">广告发放</a></li>
				</ul></li>
		</ul>
	</nav>

	<div class="container">
		<div class="hidden-xs hidden-sm col-md-1 col-lg-1"
			style="margin-top: 6px;">
			<a href="#"><img src="img/logo_201f80d.png" alt="" width="145%"
				align="absbottom"></a>
		</div>
		<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8"
			style="height: 50px; font: '微软雅黑'; font-size: 16px; line-height: 40px; padding-left: 40px;">
			<a href="#">首页</a> / <a href="#">国际</a> / <a href="#">正文</a>
		</div>
		<div class="hidden-xs col-sm-4 col-md-3 col-lg-3"
			style="height: 40px; margin-top: -20px;">
			<div class="dropdown">
				<div class="form-group has-success has-feedback" type="button"
					id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="true">
					<label class="control-label" for="inputSuccess2"></label> <input
						type="text" class="form-control" id="inputSuccess2"
						aria-describedby="inputSuccess2Status">
					<!--<span class="glyphicon glyphicon-send form-control-feedback" aria-hidden="true" style="margin-top:-5px;"></span>-->
					<button class="glyphicon glyphicon-send form-control-feedback"
						aria-hidden="true"
						style="margin-right: 1PX; margin-top: -4px; border: 0px solid #fff; height: 32px; width: 32px; border-radius: 0px 5px 5px 0px; background: #E44; color: #fff;"></button>
					<span id="inputSuccess2Status" class="sr-only">(success)</span>
				</div>
				<style>
.li001 {
	margin-right: 33px;
	cursor: default;
	list-style: none;
	text-align: left;
	font: '微软雅黑';
	font-size: 18px;
	margin-top: 12px;
	margin-bottom: 8px;
}

.li002 {
	width: 100%;
	margin-right: 33px;
	cursor: default;
	list-style: none;
	text-align: left;
	font: '微软雅黑' font-size:14px;
	margin-top: 5px;
}
</style>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"
					style="height: 305px; background: #fff; width: 100%; height: 325px;">
					<li class="li002"><a href="#"><i
							style="color: #f85959; margin-right: 10px;">1</i> 偷买手机退货遭拒</a></li>
					<li class="li002"><a href="#"><i
							style="color: #ff7800; margin-right: 10px;">2</i> 80后夫妻捐1亿 </a></li>
					<li class="li002"><a href="#"><i
							style="color: #ffba00; margin-right: 10px;">3</i> 6名日本间谍被抓 </a></li>
					<li class="li002"><a href="#"><i
							style="color: #999; margin-right: 10px;">4</i> 刷卡买包烟欠3亿 </a></li>
					<li class="li002"><a href="#"><i
							style="color: #999; margin-right: 10px;">5</i> 佟丽娅探班陈思诚 </a></li>
					<li class="li002"><a href="#"><i
							style="color: #999; margin-right: 10px;">6</i> 戒指戴太多险截肢 </a></li>
					<li class="li002"><a href="#"><i
							style="color: #999; margin-right: 10px;">7</i> 逗海狮玩被拖入水 </a></li>
					<li class="li002"><a href="#"><i
							style="color: #999; margin-right: 10px;">8</i> 用垃圾桶怼绿化工 </a></li>
					<li class="li002"><a href="#"><i
							style="color: #999; margin-right: 10px;">9</i> 女子30年吃1吨土 </a></li>
					<li class="li002"><a href="#"><i
							style="color: #999; margin-right: 2px;">10</i> 高校上演高空外卖 </a></li>
				</ul>
			</div>
		</div>
	</div>
	<div
		style="width: 100%; height: 2px; border-top: 2px solid #ccc; height: 30px;"></div>

	<div class="container">
		<div class="hidden-xs hidden-sm col-md-1 col-lg-1"
			style="margin-top: 6px;"></div>
		<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8"
			style="font: '微软雅黑'; padding-left: 40px;">
			<div style="background: #ddd; height: 1000px;">
				<ul>
				<%-- <c:forEach var="passage" items="${news}"> --%>
					<li style="font: '微软雅黑'; font-size: 24px;">${news.headline }</li>
					<li>${news.creationtime }</li>
					<li>作者：${news.headname }</li>
					<li style="font: '微软雅黑'; font-size: 18px;">
						${news.content }</li>
					<%-- 	</c:forEach>  --%>
				</ul>
			</div>
		</div>
		<div class="hidden-xs col-sm-4 col-md-3 col-lg-3"
			style="height: 40px; margin-top: 0px;">
			<div
				style="border-top: 2px solid #ed4040; background: #eee; height: 1000px;">
				<div style="width: 100%; height: 280; margin: 0px;">
					<ul>
						<li class="li001">热门搜索排行</li>
						<li class="li002"><i
							style="color: #f85959; margin-right: 10px;">1</i> 偷买手机退货遭拒</li>
						<li class="li002"><i
							style="color: #ff7800; margin-right: 10px;">2</i> 80后夫妻捐1亿</li>
						<li class="li002"><i
							style="color: #ffba00; margin-right: 10px;">3</i> 6名日本间谍被抓</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">4</i>
							刷卡买包烟欠3亿</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">5</i>
							佟丽娅探班陈思诚</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">6</i>
							戒指戴太多险截肢</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">7</i>
							逗海狮玩被拖入水</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">8</i>
							用垃圾桶怼绿化工</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">9</i>
							女子30年吃1吨土</li>
						<li class="li002"><i style="color: #999; margin-right: 2px;">10</i>
							高校上演高空外卖</li>
					</ul>
				</div>
				<div style="width: 100%; height: 280px; margin: 0px;">
					<ul>
						<li class="li001">热门搜索排行</li>
						<li class="li002"><i
							style="color: #f85959; margin-right: 10px;">1</i> 偷买手机退货遭拒</li>
						<li class="li002"><i
							style="color: #ff7800; margin-right: 10px;">2</i> 80后夫妻捐1亿</li>
						<li class="li002"><i
							style="color: #ffba00; margin-right: 10px;">3</i> 6名日本间谍被抓</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">4</i>
							刷卡买包烟欠3亿</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">5</i>
							佟丽娅探班陈思诚</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">6</i>
							戒指戴太多险截肢</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">7</i>
							逗海狮玩被拖入水</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">8</i>
							用垃圾桶怼绿化工</li>
						<li class="li002"><i style="color: #999; margin-right: 10px;">9</i>
							女子30年吃1吨土</li>
						<li class="li002"><i style="color: #999; margin-right: 2px;">10</i>
							高校上演高空外卖</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div>
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
		<br /> <br /> <br />
		<br /> <br />
	</div>

	</div>
	<script src="dist/js/jquery.js" type="text/javascript" charset="utf-8"></script>
	<script src="dist/js/bootstrap.js" type="text/javascript"
		charset="utf-8"></script>
</body>

</html>