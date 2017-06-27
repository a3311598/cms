<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
</style>
<link rel="stylesheet" href="dist/css/bootstrap.css" />
<link rel="stylesheet" href="dist/css/headlines.css" />
<title></title>
<script type="text/javascript">
</script>
</head>

<body data-spy="scroll" data-target="#bs-example-navbar-collapse-1">
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
			<li><a href="#">下载App</a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false" id="tianqi">广州&nbsp;&nbsp;&nbsp;小雨&nbsp;&nbsp;&nbsp;23°&nbsp;/&nbsp;&nbsp;29°<span
					class="glyphicon glyphicon-menu-down"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">Separated link</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">One more separated link</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav navbar-right hidden-sm hidden-xs">
		<%if (session.getAttribute("account")!=null){%>
			<li><a href="http://localhost:8081/CMS/today/ueditor.jsp"
				id="denglu">${headportrait} ${account }</a></li>
				<%}else{ %>
			<li><a href="http://localhost:8081/CMS/today/userlogin.jsp"
				id="denglu">登录</a></li>
				<%} %>
			<li><a href="#">反馈</a></li>
			<li><a href="#">投诉侵权</a></li>
			<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"
				role="button" aria-haspopup="true" aria-expanded="false"
				id="toutiao">头条产品</a>
				<ul class="dropdown-menu">
					<li><a href="#">问答</a></li>
					<li><a href="http://localhost:8081/CMS/today/LogReg.jsp">头条号</a>
					</li>
					<li role="separator" class="divider"></li>
					<li><a href="#">图圈</a></li>
					<li><a href="#">广告发放</a></li>
				</ul></li>
		</ul>
	</nav>
	<div class="content">
		<div class="container">
			<div class="row ">

				<div class="col-lg-2 " style="width: 140px;">
					<a href="# "><img class="logo " src="img/logB162.png " /></a>
					<ul class="nav nav-pills nav-stacked" style="width: 110px;">
						<li role="presentation " class="active "><a href="# ">推荐</a></li>
						<li role="presentation "><a href="# ">热点</a></li>
						<li role="presentation "><a href="# ">视频</a></li>
						<li role="presentation "><a href="# ">图片</a></li>
						<li role="presentation "><a href="# ">段子</a></li>
						<li role="presentation "><a href="# ">社会</a></li>
						<li role="presentation "><a href="# ">娱乐</a></li>
						<li role="presentation "><a href="# ">科技</a></li>
						<li role="presentation "><a href="# ">体育</a></li>
						<li role="presentation "><a href="# ">汽车</a></li>
						<li role="presentation "><a href="# ">财经</a></li>
						<li role="presentation "><a href="# ">搞笑</a></li>
						<li role="presentation "><a href="# ">更多</a></li>
					</ul>

				</div>

				<div class="col-lg-7"
					style="width: 660px; height: 500px; margin-left: 140px;">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							<li data-target="#carousel-example-generic" data-slide-to="3"></li>
							<li data-target="#carousel-example-generic" data-slide-to="4"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="img/carousel_1.jpg" / width="100%">
								<div class="carousel-caption">
									<h3>title</h3>
									<p>content</p>
								</div>
							</div>
							<div class="item">
								<img src="img/carousel_2.jpg" / width="100%">
								<div class="carousel-caption">
									<h3>title</h3>
									<p>content</p>
								</div>
							</div>
							<div class="item">
								<img src="img/carousel_3.jpg" / width="100%">
								<div class="carousel-caption">
									<h3>title</h3>
									<p>content</p>
								</div>
							</div>
							<div class="item">
								<img src="img/carousel_4.jpg" / width="100%">
								<div class="carousel-caption">
									<h3>title</h3>
									<p>content</p>
								</div>
							</div>
							<div class="item">
								<img src="img/carousel_5.jpg" / width="100%">
								<div class="carousel-caption">
									<h3>title</h3>
									<p>content</p>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							role="button" data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Privious</span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>

					</div>








					<%-- 						<form action="${path}/NewsAction"id="myForm" type="hidden" >
	
	<input type="submit" style="width: 0px;height: 0px;margin:0;padding:0;border:0;value="提交">  
</form> --%>

					<br>
					<ul data-spy="scroll" class="article_list"
						style="padding-left: 0px;">
						<c:forEach var="passage" items="${newList}">
							<li class="item_article" style="width: 660px; height: 123px;">
								<a href="NewsDetail?id=${passage.id}"><img
									style="width: 156px; height: 102px; vertical-align: middle;"
									alt="" src="${passage.headimg}"></a>
								<div
									style="width: 480px; height: 102px; display: inline-block; float: right">
									<div style="margin-top: 10px;">
										<a href="NewsDetail?id=${passage.id}"><h3>${passage.headline}</h3></a>
									</div>
									<div>${passage.creationtime}</div>
								</div>

							</li>
							<br />

						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-3">
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-addon glyphicon glyphicon-eye-open"></span>
					</div>
					<div class="report">
						<p>网上有害信息举报专区</p>
					</div>
					<div class="advertisement">
						<p>广告</p>
						<img src="img/广告2.jpg" />
					</div>
					<div class="hotnews">
						<p>24小时热闻</p>
						<a href="">dfwaadf</a> <a href="">sadfdsafdsfa</a> <a href="">sadfdsafdsa</a>
						<a href="">safdsafdsa</a>
					</div>
					<div class="vedio">
						<p>视频</p>
					</div>
					<div class="advertisement">
						<p>广告</p>
						<img src="img/广告1.jpg" />
					</div>
					<div class="wonderfulimg">
						<p>精彩图片</p>
						<ul class="y-box picture-list">
							<li class="y-left picture-item"><a target="_blank"
								href="/group/6420310059955781890/">
									<div class="module-pic picture-img">
										<img alt=""
											src="http://p3.pstatp.com/list/300x170/216b0007ba79a17e63ac">
										<i class="hot-tag"><span>11图</span></i>
									</div>
									<p>腾讯NBA最美女主播：</p>
							</a></li>
							<li class="y-left picture-item"><a target="_blank"
								href="/group/6399040945232593153/">
									<div class="module-pic picture-img">
										<img alt=""
											src="http://p9.pstatp.com/list/300x170/18a3000d09e60b6b9f2d">
										<i class="hot-tag"><span>14图</span></i>
									</div>
									<p>原来摄影师都是大骗子</p>
							</a></li>
							<li class="y-left picture-item"><a target="_blank"
								href="/group/6420260296807956738/">
									<div class="module-pic picture-img">
										<img alt=""
											src="http://p9.pstatp.com/list/300x170/21300002f0967b4ccc5c">
										<i class="hot-tag"><span>18图</span></i>
									</div>
									<p>与寂寞为邻</p>
							</a></li>
							<li class="y-left picture-item"><a target="_blank"
								href="/group/6401927158831268097/">
									<div class="module-pic picture-img">
										<img alt=""
											src="http://p3.pstatp.com/list/300x170/19f300066000a63297c3">
										<i class="hot-tag"><span>32图</span></i>
									</div>
									<p>自然奇石展｜大庆头一遭</p>
							</a></li>
							<li class="y-left picture-item"><a target="_blank"
								href="/group/6417275843407970561/">
									<div class="module-pic picture-img">
										<img alt=""
											src="http://p1.pstatp.com/list/300x170/1dc600022e8baac38832">
										<i class="hot-tag"><span>10图</span></i>
									</div>
									<p>斯诺克心理素质！</p>
							</a></li>
							<li class="y-left picture-item"><a target="_blank"
								href="/group/6400260136657273090/">
						</ul>
					</div>
					<div class="more">
						<p>更多</p>
						<ul>
							<li class="item"><a href="/about/" rel="nofollow">关于头条</a></li>
							<li class="item"><a href="/join/" rel="nofollow">加入头条</a></li>
							<li class="item"><a href="/report/" rel="nofollow">媒体报道</a>
							</li>
							<li class="item"><a href="/media_partners/" rel="nofollow">媒体合作</a>
							</li>
							<li class="item"><a href="/cooperation/" rel="nofollow">产品合作</a>
							</li>
							<li class="item"><a href="/media_cooperation/"
								rel="nofollow">合作说明</a></li>
							<li class="item"><a
								href="https://ad.toutiao.com/promotion/?source2=pchomemore"
								target="_blank" rel="nofollow">广告投放</a></li>
							<li class="item"><a href="/contact/" rel="nofollow">联系我们</a>
							</li>
							<li class="item"><a href="/user_agreement/" rel="nofollow">用户协议</a>
							</li>
							<li class="item"><a href="/complain/" rel="nofollow">侵权投诉</a>
							</li>
							<li class="item"><a href="/corrupt_report/" rel="nofollow">廉洁举报</a>
							</li>
						</ul>
					</div>
					<div class="friendlink">
						<p>友情链接</p>
						<ul>
							<li class="item"><a target="_blank"
								href="http://www.gmw.cn/">光明网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.cnr.cn/">央广网</a></li>
							<li class="item"><a target="_blank" href="http://www.cri.cn">国际在线</a></li>
							<li class="item"><a target="_blank"
								href="http://www.tibet.cn/">中国西藏网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.cankaoxiaoxi.com/">参考消息</a></li>
							<li class="item"><a target="_blank"
								href="http://www.huanqiu.com/">环球网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.cyol.com">中青在线</a></li>
							<li class="item"><a target="_blank"
								href="http://www.youth.cn/">中青网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.haiwainet.cn/">海外网</a></li>
							<li class="item"><a target="_blank"
								href="http://h5.china.com.cn">中国网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.k618.cn/">未来网</a></li>
							<li class="item"><a target="_blank"
								href="http://qianlong.com/">千龙网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.bjnews.com.cn/">新京报</a></li>
							<li class="item"><a target="_blank"
								href="http://www.ynet.com/">北青网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.fawan.com/">法制晚报</a></li>
							<li class="item"><a target="_blank"
								href="http://www.morningpost.com.cn">北京晨报</a></li>
							<li class="item"><a target="_blank"
								href="http://www.bbtnews.com.cn/">北京商报</a></li>
							<li class="item"><a target="_blank"
								href="http://www.stardaily.com.cn/">北京娱乐信报</a></li>
							<li class="item"><a target="_blank"
								href="http://www.oeeee.com/">奥一网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.ycwb.com/">金羊网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.hsw.cn/">华商网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.xinmin.cn">新民网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.rednet.cn/index.html">红网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.jschina.com.cn">中国江苏网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.jxnews.com.cn/">中国江西网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.iqilu.com/">齐鲁网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.hinews.cn/news/">南海网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.ahwang.cn/">安徽网</a></li>
							<li class="item last"><a target="_blank"
								href="http://www.hebnews.cn/">河北新闻网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.mnw.cn/">闽南网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.hxnews.com/">海峡网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.voc.com.cn/">华声在线</a></li>
							<li class="item"><a target="_blank"
								href="http://tv.cztv.com">中国蓝TV</a></li>
							<li class="item"><a target="_blank"
								href="http://www.lnd.com.cn/">北国网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.longhoo.net/">龙虎网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.timedg.com/">东莞时间网</a></li>
							<li class="item"><a target="_blank"
								href="http://www.autohome.com.cn/">汽车之家</a></li>
							<li class="item"><a target="_blank"
								href="http://www.onlylady.com/">Onlylady女人志</a></li>

							<li class="item"><a target="_blank"
								href="http://123.chinaso.com/">中国搜索</a></li>
							<li class="item"><a target="_blank"
								href="http://www.nbd.com.cn/">每日经济新闻</a></li>
							<li class="item"><a target="_blank"
								href="http://www.cheshi.com/">网上车市</a></li>
							<li class="item"><a target="_blank"
								href="http://www.news18a.com/">网通社汽车</a></li>
							<li class="item"><a target="_blank"
								href="http://www.enorth.com.cn/">北方网</a></li>

						</ul>
					</div>
					<div class="copyright">

						<p class="J-company-name"></p>

						<a href="http://www.12377.cn/" target="_blank"
							ga_event="click_about">中国互联网举报中心 </a> <a
							href="http://www.miibeian.gov.cn/" target="_blank"
							ga_event="click_about">京ICP证140141号 </a>

						<div class="">
							<a href="http://www.miibeian.gov.cn/" target="_blank"
								ga_event="click_about">京ICP备12025439号-3 </a> <a href="/license/"
								class="icp" target="_blank">网络文化经营许可证</a>
						</div>
						<p>京-非经营性-2016-0081</p>
						<p>互联网药品信息服务资格证书</p>

						<a href="/a3642705768/" target="_blank">跟帖评论自律管理承诺书 </a> <span>违法和不良信息举报：010-58341833</span>
						<span>公司名称：北京字节跳动科技有限公司</span> <a
							href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002002023"
							target="_blank" ga_event="click_about"><img
							src="//s3.pstatp.com/toutiao/resource/ntoutiao_web/static/image/gongan_d0289dc.png">京公网安备
							11000002002023号</a>

					</div>
				</div>

			</div>
		</div>

	</div>

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

	<script type="text/javascript " src="dist/js/jquery-3.2.1.js "
		charset="UTF-8 "></script>
	<script type="text/javascript " src="dist/js/bootstrap.js "
		charset="UTF-8 "></script>
	<script type="text/javascript">
			$(function() {
				$('.carousel').carousel({
					interval: 3000
				});
			}); < /script >
			/* $('[data-spy="scroll"]').each(function () {
				  var $spy = $(this).scrollspy('refresh')
				}) */
			/* $(function(){
   					 $('#myForm').submit();
				}); */
			
				//      $(window).scroll(function () {  
				//          var menu_top = $('.col-lg-2').offset().top;  
				//          if ($(window).scrollTop() >= menu_top) {  
				//              $('.row').addClass('col-lg-2')  
				//          }  
				//          else {  
				//              $('.row').removeClass('col-lg-2')  
				//          }  
				//      });
		</script>

	</script>
</body>

</html>