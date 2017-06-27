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
<link rel="stylesheet" href="/CMS/today/dist/css/bootstrap.css" />
<link rel="stylesheet" href="/CMS/today/dist/css/headlines.css" />
<title></title>

</head>

<body>
	<nav class="navbar navbar-inverse clearfix navbar-static-top ">
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
			<li><a href="http://localhost:8081/CMS/today/LogReg.jsp"
				class="dropdown-toggle" data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="false" id="toutiao">头条产品</a>
				<ul class="dropdown-menu">
					<li><a href="#">问答</a></li>
					<li><a
						href="http://localhost:8081/Servleta/Headlines%20Today/register.jsp">头条号</a>
					</li>
					<li role="separator" class="divider"></li>
					<li><a href="#">图圈</a></li>
					<li><a href="#">广告发放</a></li>
				</ul></li>
		</ul>
	</nav>

	<div class="content">
		<div class="_bd_ext_tip" style="visibility: hidden;">
			<span class="_bd_ext_search">百度一下</span><span class="_bd_ext_open">打开链接</span><span
				class="_bd_ext_copy">复制</span>
		</div>
		<div class="container">
			<div class="row ">

				<div class="col-lg-2 " style="width: 140px;" id="myScrollspy">

					<ul class="nav nav-pills nav-stacked" id="myNav"
						style="width: 110px;">
						<a href="#"><img class="logo " src="${path}/today/img/logB162.png" /></a>
						<li role="presentation " class="active "><a href="#">推荐</a></li>
				<c:forEach var="col" items="${colList }">
						<li role="presentation "><a href="${pageContext.request.contextPath }/searchNewsByCatId?id=${col.id }">${col.columnname }</a></li>
				</c:forEach>
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
								<img src="${path}/today/img/carousel_1.jpg" width="100%" />
								<div class="carousel-caption">
									<h3>title</h3>
									<p>content</p>
								</div>
							</div>
							<div class="item">
								<img src="${path}/today/img/carousel_2.jpg" width="100%" />
								<div class="carousel-caption">
									<h3>title</h3>
									<p>content</p>
								</div>
							</div>
							<div class="item">
								<img src="${path}/today/img/carousel_3.jpg" width="100%" />
								<div class="carousel-caption">
									<h3>title</h3>
									<p>content</p>
								</div>
							</div>
							<div class="item">
								<img src="${path}/today/img/carousel_4.jpg" width="100%" />
								<div class="carousel-caption">
									<h3>title</h3>
									<p>content</p>
								</div>
							</div>
							<div class="item">
								<img src="${path}/today/img/carousel_5.jpg" width="100%" />
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
					<div id="msgAlert">
						<span>您有未读新闻，点击查看</span> <i class="y-icon icon-dislikenewfeed"></i>
					</div>
					<ul data-spy="scroll" class="article_list"
						style="padding-left: 0px;">
						<c:forEach var="passage" items="${newList }">
							<li class="item_article" style="width: 660px; height: 123px;">
							<a href="NewsDetail?id=${passage.id}">
							<img style="width: 156px; height: 102px; vertical-align: middle;"
								alt="" src="${passage.thumb}"></a>
							 
								<div
									style="width: 480px; height: 102px; display: inline-block; float: right">
									<div style="margin-top: 10px;">
										<h3>
											<a href="NewsDetail?id=${passage.id}">${passage.headline}</a>
										</h3>
									</div>
									<div class="article_footer">
										<div class="article_footer_left">
											<a target="_blank" class="lbtn tag tag-bg-other"
												href="news_history">历史</a>
											<div class="y-left">
												<a class="lbtn media-avatar" target="_blank"
													href="/c/user/4098955063/"> <img alt=""
													src="http://p2.pstatp.com/large/2520/2738830356">
												</a> <a class="lbtn source" target="_blank"
													href="/c/user/4098955063/">&nbsp;脑洞历史观&nbsp;⋅</a> <a
													class="lbtn comment" target="_blank"
													href="/group/6425900878935408898//#comment_area">&nbsp;14评论&nbsp;⋅</a>

											</div>
											<span class="test">${passage.creationtime }</span>
										</div>
										<div class="article_footer_right">
											<span class="dislike" data-groupid="6425900878935408898">
												不感兴趣 <i class="glyphicon glyphicon-remove"></i>
											</span>
										</div>
									</div>

								</div>

							</li>
						</c:forEach>
					</ul>

					<!--<ul data-spy="scroll" class="article_list" style="padding-left: 0px;">
							<c:forEach var="passage" items="${newList}">
								<li class="item_article" style="width: 660px;height: 123px;">
									<img style="width: 156px;height: 102px;vertical-align: middle;" alt="" src="${passage.headimg}">
									<div style="width: 480px;height: 102px;display: inline-block;float:right">
										<div style="margin-top:10px;">
											<h3><a href="newsDetail?id=${passage.id}">${passage.headline}</a></h3></div>
										<div>${passage.content}</div>
										<div>${passage.creationtime}</div>
									</div>

								</li>
								<br />

							</c:forEach>
						</ul>-->
				</div>
				<div class="col-lg-3">
					<div class="input-group">
						<input type="text" class="form-control"> 
						<span class="input-group-addon glyphicon glyphicon-search"></span>
					</div>
					<div class="report">
						<a href="#">
							<div class="report_logo">
								<img src="${path}/today/img/举报logo.png" />
							</div>
							<div class="report_info">
								<p class="report_info_up">网上有害信息举报专区</p>
								<p class="report_info_down">举报电话：12377</p>
							</div>

						</a>
						<!--<p>网上有害信息举报专区</p>-->
					</div>
						<c:forEach var="List" items="${adList }">
					<div class="advertisement">
						<div class="pic_wrap">
							<a href="#"><img src="${List.adLinks }"></a>
							<a href="#"style="color: #222;"><h4>本地近8万人选择这款炒股软件，自动提示买卖点</h4></a>
						</div>
						<div class="pic_wrap_down">
							<a href="#" class="source">指南针炒股软件</a> <a href="#"
								class="source_label">&nbsp;&nbsp;广告</a>
						</div>

					</div>
						</c:forEach>
					<div class="hotnews" id="myScrollspy_hotNews">
						<div class="hotnews_head">
							<p>24小时热闻</p>
						</div>
						<ul class="news_content">
							<c:forEach var="hotNews" items="${hotNewList}">
							<li class="news_list"><a href="">
									<div class="news_pic">
										<img src="${path}/today/img/hotnews_1.jpg" />
									</div>
									<div class="news_title">
										<p>${hotNews.headline}</p>
									</div>
							</a></li>
							</c:forEach>
						</ul>
					</div>

					<div class="vedio">
						<div class="vedio_head">
							<a href="#">
								<p class="vedio_title">热门视频</p>
							</a>
						</div>

						<ul class="vedio_list">
							<li class="vedio_item"><a href="">
									<dl>
										<dt class="vedio_pic">
											<img src="${path}/today/img/vedio_img1.jpg" />
										</dt>
										<dd class="vedio_content">
											<h5>农村美女开手扶拖拉机下田耕地，想收个上门女婿，农活不用你干</h5>
											<p>
												<span>933次播放 &nbsp;</span> <span> &nbsp;1评论</span>
											</p>
										</dd>
									</dl>
							</a></li>
							<li class="vedio_item"><a href="">
									<dl>
										<dt class="vedio_pic">
											<img src="${path}/today/img/vedio_img2.jpg" />
										</dt>
										<dd class="vedio_content">
											<h5>马蓉拿自杀求王宝强原谅，结果王宝强一句话绝了</h5>
											<p>
												<span>7.万 &nbsp;</span> <span> &nbsp;97评论</span>
											</p>
										</dd>
									</dl>
							</a></li>
							<li class="vedio_item"><a href="">
									<dl>
										<dt class="vedio_pic">
											<img src="${path}/today/img/vedio_img3.jpg" />
										</dt>
										<dd class="vedio_content">
											<h5>家里蚊子大多，小伙自制环保配方灭蚊，蚊香扔了，家里不再有蚊子</h5>
											<p>
												<span>22.3万次播放 &nbsp;</span> <span> &nbsp;61评论</span>
											</p>
										</dd>
									</dl>
							</a></li>
							<li class="vedio_item"><a href="">
									<dl>
										<dt class="vedio_pic">
											<img src="${path}/today/img/vedio_img4.jpg" />
										</dt>
										<dd class="vedio_content">
											<h5>“李菁演双簧遭何云伟戏弄”晚辈戏弄长辈在相声界正常吗？</h5>
											<p>
												<span>152次播放 &nbsp;</span> <span> &nbsp;0评论</span>
											</p>
										</dd>
									</dl>
							</a></li>
							<li class="vedio_item"><a href="">
									<dl>
										<dt class="vedio_pic">
											<img src="${path}/today/img/vedio_img5.jpg" />
										</dt>
										<dd class="vedio_content">
											<h5>这国高价大买先进武器跟中国作对 出事却厚着脸皮求中国帮忙</h5>
											<p>
												<span>4399次播放 &nbsp;</span> <span> &nbsp;13评论</span>
											</p>
										</dd>
									</dl>
							</a></li>
							<li class="vedio_item"><a href="">
									<dl>
										<dt class="vedio_pic">
											<img src="${path}/today/img/vedio_img6.jpg" />
										</dt>
										<dd class="vedio_content">
											<h5>印度高铁发车不到一周，让人意料之中的事儿还是发生了</h5>
											<p>
												<span>188.7万次播放 &nbsp;</span> <span> &nbsp;4652评论</span>
											</p>
										</dd>
									</dl>
							</a></li>
						</ul>

					</div>

					<div class="advertisement">
						<div class="pic_wrap">
							<a href="#"><img src="${path}/today/img/广告1.jpg" /></a> <a href="#"
								style="color: #222;"><h4>本地近8万人选择这款炒股软件，自动提示买卖点</h4></a>
						</div>
						<div class="pic_wrap_down">
							<a href="#" class="source">指南针炒股软件</a> <a href="#"
								class="source_label">&nbsp;&nbsp;广告</a>
						</div>

					</div>
					<div class="wonderfulimg">

						<div class="picture_head">
							<p>精彩图片</p>
						</div>
						<ul class="picture-list">
							<li class="picture-item"><a target="_blank"
								href="/group/6420310059955781890/">
									<div class="picture-img">
										<img alt="" src="${path}/today/img/wanderfulimg1.jpg">
									</div>
									<p>第44届世界技能竞赛-机电一体化项目广东省选拔赛精彩回顾</p>
							</a></li>
							<li class="picture-item"><a target="_blank"
								href="/group/6399040945232593153/">
									<div class="picture-img">
										<img alt="" src="${path}/today/img/wanderfulimg2.jpg">
									</div>
									<p>实拍阿里和万达食堂 再看华为的，华为员工明显更幸福</p>
							</a></li>
							<li class="picture-item"><a target="_blank"
								href="/group/6420260296807956738/">
									<div class="picture-img">
										<img alt="" src="${path}/today/img/wanderfulimg3.jpg">
									</div>
									<p>端午节最热闹的，不是中国，而是这个国家！</p>
							</a></li>
							<li class="picture-item"><a target="_blank"
								href="/group/6401927158831268097/">
									<div class="picture-img">
										<img alt="" src="${path}/today/img/wanderfulimg4.jpg">
									</div>
									<p>一毕业就成了别人的大学，湘潭大学琴湖景观工程建设纪实</p>
							</a></li>
							<li class="picture-item"><a target="_blank"
								href="/group/6417275843407970561/">
									<div class="picture-img">
										<img alt="" src="${path}/today/img/wanderfulimg5.jpg">
									</div>
									<p>四川师大美女英语老师爆红网络，学生称她的英语课男生出勤率爆表</p>
							</a></li>
							<li class="picture-item"><a target="_blank"
								href="/group/6400260136657273090/">
									<div class="picture-img">
										<img alt="" src="${path}/today/img/wanderfulimg6.jpg">
									</div>
									<p>生机盎然的高清风景手机壁纸</p>
							</a></li>
						</ul>
					</div>
					<div class="more">
						<div class="more_head">
							<p>更多</p>
						</div>
						<div class="more_content">
							<ul>
								<li class="item"><a href="/about/" rel="nofollow">关于头条</a>
								</li>
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
					</div>
					<div class="friendlink">
						<div class="friendlink_head">
							<p>友情链接</p>
						</div>
						<div class="friendlink_content">

							<ul>
								<li class="item"><a target="_blank"
									href="http://www.gmw.cn/">光明网</a></li>
								<li class="item"><a target="_blank"
									href="http://www.cnr.cn/">央广网</a></li>
								<li class="item"><a target="_blank"
									href="http://www.cri.cn">国际在线</a></li>
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
					</div>
					<div class="copyright">
						<p class="J-company-name">© 2017 今日头条</p>
						<p>
							<a href="http://www.12377.cn/" target="_blank">中国互联网举报中心 </a> <a
								href="http://www.miibeian.gov.cn/" target="_blank">京ICP证140141号
							</a>
						</p>
						<p>
							<a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备12025439号-3
							</a> <a href="/license/" class="icp" target="_blank">网络文化经营许可证</a>
						</p>
						<p>京-非经营性-2016-0081</p>
						<p>互联网药品信息服务资格证书</p>
						<p>
							<a href="/a3642705768/" target="_blank">跟帖评论自律管理承诺书 </a>
						</p>
						<p>
							<span>违法和不良信息举报：010-58341833</span>
						</p>
						<p>
							<span>公司名称：北京字节跳动科技有限公司</span>
						</p>
						<p>
							<a
								href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002002023"
								target="_blank"><img
								src="//s3.pstatp.com/toutiao/resource/ntoutiao_web/static/image/gongan_d0289dc.png">京公网安备
								11000002002023号</a>
						</p>
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

	<script type="text/javascript " src="/CMS/today/dist/js/jquery-3.2.1.js" charset="UTF-8"></script>
	<script type="text/javascript " src="/CMS/today/dist/js/bootstrap.js" charset="UTF-8"></script>
	<script type="text/javascript" src="/CMS/today/dist/js/jquery.relativetime.js"
		charset="UTF-8"></script>
	<script type="text/javascript">
			$(function() {
				$('.carousel').carousel({
					interval: 3000
				});
			});
			$(document).ready(function() {
				$("#myNav").affix({
					offset: {
						top: 34
					}
				});
			});
			$(document).ready(function() {
				$("#myScrollspy_hotNews").affix({
					offset: {
						top: 3150
					}
				});
			});
			$(document).ready(function() {
				$("#msgAlert").affix({
					offset: {
						top: 574
					}
				});
			});
			$(document).ready(function() {
				$(".test").relativeTime();
			});
			
		</script>

</body>

</html>