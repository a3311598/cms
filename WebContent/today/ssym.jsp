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
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title></title>
		<link rel="stylesheet" type="text/css" href="dist/css/bootstrap.css" />
	</head>

	<body style="background: #eee;">
		<nav class="navbar navbar-inverse clearfix navbar-static-top">
			<div class="navbar-header"> 
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
       			 	<span class="sr-only">Toggle navigation</span>
        			<span class="icon-bar"></span>
       				<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
      		    </button>
      		<a class="navbar-brand visible-xs" href="#">今日头条</a>
			</div>
			<ul class="nav navbar-nav collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<li><a href="#">推荐 </a></li>
				<li><a href="#">热点 </a></li>
				<li><a href="#">视频 </a></li>
				<li><a href="#">图片 </a></li>
				<li><a href="#">段子 </a></li>
				<li><a href="#">社会  </a></li>
				<li><a href="#">娱乐  </a></li>
				<li><a href="#">科技 </a></li>
				<li><a href="#">汽车 </a></li>
				<li><a href="#">体育 </a></li>

				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="tianqi" style="height: 34px;">更多</a>
					<ul class="dropdown-menu" style="width:10px;background:#fff;margin: 0px;min-width: 70px;border-radius: 0px;border: 0px;">
						<li><a href="#">财经  </a></li>
						<li><a href="#">军事  </a></li>						
						<li><a href="#">国际 </a></li>
						<li><a href="#">时尚  </a></li>
						<li><a href="#">旅游  </a></li> 
						<li><a href="#">探索 </a></li>
						<li><a href="#">育儿 </a></li>
						<li><a href="#">养生</a></li>
						<li><a href="#">故事</a></li>
						<li><a href="#">游戏  </a></li>
						<li><a href="#">历史  </a></li>
						<li><a href="#">美食 </a></li>	
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right hidden-sm hidden-xs">
				<li>
					<a href="#" id="denglu">登录</a>
				</li>
				<li>
					<a href="#">反馈</a>
				</li>
				<li>
					<a href="#">投诉侵权</a>
				</li>
				<li>
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="toutiao">头条产品</a>
					<ul class="dropdown-menu">
						<li><a href="#">问答</a></li>
						<li><a href="#">头条号</a>
						</li><li role="separator" class="divider"></li>
						<li><a href="#">图圈</a></li>
						<li><a href="#">广告发放</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<div class="container">
				
			<div class="hidden-xs hidden-sm col-md-2 col-lg-2" style="width: 120px;height: 50px;margin-top:5px;">
				<a href="#"><img src="img/logo_201f80d.png" alt=""  width="110" align="absbottom" ></a>
			</div>	
			<div class="col-xs-12 col-sm-8 col-md-7 col-lg-7" style="height:50px;">

<form action="${path}/today/Ooo" method="post">
				<div style="margin: 0px;float:left;border:1px solid #ed4040;border-radius:4px 0px 0px 4px;width: 80%;height: 40px;">
					<input type="text" name="TitleName" id=""  style="border-radius:4px 0px 0px 4px;width: 100%;outline:0;border: 0;height:100%;font-size:16px;font: '微软雅黑';padding:0px 3%;"/>
				</div>
				<div style="margin: 0px;float:left;border:1px solid #ed4040;border-radius:0 4px 4px 0;width:20%;height: 40px;color: #fff;">
					<button type="submit" style="background: #ed4040;border-radius:0 4px 4px 0;width: 100%;height:100%;outline:0;border: 0;font: '微软雅黑';font-size: 16px;">搜索</button>
				</div>
</form>
				
				<div style="height: 40px;"></div>
				
				<ul style="display: block;margin: 0px;padding: 0px;font-size: 18px;color: #222;text-align: left;margin-top:20px;">
					<li style="margin-right:33px;cursor:default;float: left;list-style:none;text-align: left;color:#ed4040;font: '微软雅黑';">综合</li>
					<li style="margin-right:33px;cursor:default;float: left;list-style:none;text-align: left;font: '微软雅黑';">视频</li>
					<li style="margin-right:33px;cursor:default;float: left;list-style:none;text-align: left;font: '微软雅黑';">图集</li>	
					<li style="margin-right:33px;cursor:default;float: left;list-style:none;text-align: left;font: '微软雅黑';">用户</li>	
				</ul>
				
				<div style="height:100%;width: 100%;background: #fff;margin-top:60px ;">
					<div style="padding:1.5% 2% 0% 2%;height: 142px; background: #fff;">
						<div style="height:100%;width:100%;background: #fff;border-bottom:1px solid #ccc;">
							<div style="float: left;">
								<img src="img/1dcd002338c34456f274.jpg" />
							</div>
							<div style="width:55%;height:100%;background: #fff;float:left;">
								<div style="padding:6% 0% 2% 10%;font-size:20px;">La La La...</div>
								<div style="padding:0% 0% 0% 10%;font-size:14px;">头条问答&nbsp;0评论&nbsp;</div>
							</div>
						</div>
					</div>
<c:forEach var="passage" items="${newList}">
					<div style="padding:1.5% 2% 0% 2%;height: 142px; background: #fff;">
						<div style="height:100%;width:100%;background: #fff;border-bottom:0px solid #ccc;">
							<div style="float: left;">
								<img src="img/1dcd002338c34456f274.jpg" />
							</div>
							<div style="width:55%;height:100%;background: #fff;float:left;">
								<div style="padding:6% 0% 2% 10%;font-size:20px;">${passage.headline} </div>
								<div style="padding:0% 0% 0% 10%;font-size:14px;"> 头&nbsp;头条问答&nbsp;0评论&nbsp;${passage.creationtime}</div>
							</div>
						</div>
					</div>
</c:forEach>
				</div>
			</div>
			
			
			
			<div class="hidden-xs col-sm-4 col-md-3 col-lg-3" style="height:305px;background: #fff;border-top: 2px solid #ed4040;">
				<div style="width: 150%;height: 100%;margin: 0px;">
					<ul>
						<li class="li001">热门搜索排行</li>
						<li class="li002"><i style="color: #f85959;margin-right:10px ;">1</i> 偷买手机退货遭拒 </li>
						<li class="li002"><i style="color: #ff7800;margin-right:10px ;">2</i> 80后夫妻捐1亿 </li>
						<li class="li002"><i style="color: #ffba00;margin-right:10px ;">3</i> 6名日本间谍被抓 </li>
						<li class="li002"><i style="color: #999;margin-right:10px ;">4</i> 刷卡买包烟欠3亿 </li>
						<li class="li002"><i style="color: #999;margin-right:10px ;">5</i> 佟丽娅探班陈思诚 </li>
						<li class="li002"><i style="color: #999;margin-right:10px ;">6</i> 戒指戴太多险截肢 </li>
						<li class="li002"><i style="color: #999;margin-right:10px ;">7</i> 逗海狮玩被拖入水 </li>
						<li class="li002"><i style="color: #999;margin-right:10px ;">8</i> 用垃圾桶怼绿化工 </li>
						<li class="li002"><i style="color: #999;margin-right:10px ;">9</i> 女子30年吃1吨土 </li>
						<li class="li002"><i style="color: #999;margin-right:2px ;">10</i> 高校上演高空外卖 </li>
					</ul>
				</div>
			</div>
		</div>
<style>
	.li001{margin-right:33px;cursor:default;list-style:none;text-align: left;font: '微软雅黑';font-size:18px;margin-top:12px;margin-bottom:8px;}
	.li002{margin-right:33px;cursor:default;list-style:none;text-align: left;font: '微软雅黑'font-size:14px;margin-top:5px ;}
</style>
			<div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br /><br />
				<br />
			</div>

		</div>
		<script type="text/javascript" src="dist/js/jquery.js" charset="UTF-8"></script>
		<script type="text/javascript" src="dist/js/bootstrap.js" charset="UTF-8"></script>
	</body>

</html>