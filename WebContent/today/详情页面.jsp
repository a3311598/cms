<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<!--ie8ä»¥ä¸çï¼ä¼åä½¿ç¨edgeçåæ ¸-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--
			è§å£
		-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title></title>
		<link rel="stylesheet" type="text/css" href="dist/css/bootstrap.css" />
		<link rel="stylesheet" href="css/yemian.css" />
	</head>

	<body style="background: #fff;">
		<nav class="navbar navbar-inverse clearfix navbar-static-top">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
       			 	<span class="sr-only">Toggle navigation</span>
        			<span class="icon-bar"></span>
       				<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
      		    </button>
				<a class="navbar-brand visible-xs" href="#">ä»æ¥å¤´æ¡</a>
			</div>
			<ul class="nav navbar-nav collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<li><a href="#">æ¨è </a></li>
				<li><a href="#">ç­ç¹ </a></li>
				<li><a href="#">è§é¢ </a></li>
				<li><a href="#">å¾ç </a></li>
				<li><a href="#">æ®µå­ </a></li>
				<li><a href="#">ç¤¾ä¼  </a></li>
				<li><a href="#">å¨±ä¹  </a></li>
				<li><a href="#">ç§æ </a></li>
				<li><a href="#">æ±½è½¦ </a></li>
				<li><a href="#">ä½è² </a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="tianqi" style="height:34px;">æ´å¤</a>
					<ul class="dropdown-menu" style="width:10px;background:#fff;margin: 0px;min-width: 70px;border-radius: 0px;border: 0px;margin-top:0px;">
						<li><a href="#">è´¢ç»  </a></li>
						<li><a href="#">åäº  </a></li>
						<li><a href="#">å½é </a></li>
						<li><a href="#">æ¶å°  </a></li>
						<li><a href="#">ææ¸¸  </a></li>
						<li><a href="#">æ¢ç´¢ </a></li>
						<li><a href="#">è²å¿ </a></li>
						<li><a href="#">å»ç</a></li>
						<li><a href="#">æäº</a></li>
						<li><a href="#">æ¸¸æ  </a></li>
						<li><a href="#">åå²  </a></li>
						<li><a href="#">ç¾é£ </a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right hidden-sm hidden-xs">
				<li>
					<a href="#" id="denglu">ç»å½</a>
				</li>
				<li>
					<a href="#">åé¦</a>
				</li>
				<li>
					<a href="#">æè¯ä¾µæ</a>
				</li>
				<li>
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="toutiao">å¤´æ¡äº§å</a>
					<ul class="dropdown-menu">
						<li><a href="#">é®ç­</a></li>
						<li><a href="#">å¤´æ¡å·</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">å¾å</a></li>
						<li><a href="#">å¹¿ååæ¾</a></li>
					</ul>
				</li>
			</ul>
		</nav>

		<div class="container">
			<div class="hidden-xs hidden-sm col-md-1 col-lg-1" style="margin-top:6px ;">
				<a href="#"><img src="img/logo_201f80d.png" alt="" width="145%" align="absbottom"></a>
			</div>
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8" style="height:50px;font: 'å¾®è½¯éé»';font-size:16px;line-height:40px;padding-left:40px;">
				<a href="#">é¦é¡µ</a> / <a href="#">å½é</a> / <a href="#">æ­£æ</a>
			</div>
			<div class="hidden-xs col-sm-4 col-md-3 col-lg-3" style="height:40px;margin-top:-20px ;">
				<div class="dropdown" >
					<div class="form-group has-success has-feedback" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						<label class="control-label" for="inputSuccess2"></label>
						<input type="text" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status">
						<!--<span class="glyphicon glyphicon-send form-control-feedback" aria-hidden="true" style="margin-top:-5px;"></span>-->
						<button class="glyphicon glyphicon-send form-control-feedback" aria-hidden="true" style="margin-right:1PX;margin-top:-4px;border:0px solid #fff;height:32px;width:32px;border-radius:0px 5px 5px 0px;background:#E44;color: #fff;"></button>
						<span id="inputSuccess2Status" class="sr-only">(success)</span>
					</div>
<style>
	.li001{margin-right:33px;cursor:default;list-style:none;text-align: left;font: 'å¾®è½¯éé»';font-size:18px;margin-top:12px;margin-bottom:8px;}
	.li002{width: 100%; margin-right:33px;cursor:default;list-style:none;text-align: left;font: 'å¾®è½¯éé»'font-size:14px;margin-top:5px ;}
</style>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"style="height:305px;background: #fff;width:100%;height:325px;">
						<li class="li002"><a href="#"><i style="color: #f85959;margin-right:10px ;">1</i> å·ä¹°ææºéè´§é­æ</a> </li>
						<li class="li002"><a href="#"><i style="color: #ff7800;margin-right:10px ;">2</i> 80åå¤«å¦»æ1äº¿ </a></li>
						<li class="li002"><a href="#"><i style="color: #ffba00;margin-right:10px ;">3</i> 6åæ¥æ¬é´è°è¢«æ </a></li>
						<li class="li002"><a href="#"><i style="color: #999;margin-right:10px ;">4</i> å·å¡ä¹°åçæ¬ 3äº¿ </a></li>
						<li class="li002"><a href="#"><i style="color: #999;margin-right:10px ;">5</i> ä½ä¸½å¨æ¢ç­éæè¯ </a></li>
						<li class="li002"><a href="#"><i style="color: #999;margin-right:10px ;">6</i> æææ´å¤ªå¤é©æªè¢ </a></li>
						<li class="li002"><a href="#"><i style="color: #999;margin-right:10px ;">7</i> éæµ·ç®ç©è¢«æå¥æ°´ </a></li>
						<li class="li002"><a href="#"><i style="color: #999;margin-right:10px ;">8</i> ç¨åå¾æ¡¶æ¼ç»¿åå·¥ </a></li>
						<li class="li002"><a href="#"><i style="color: #999;margin-right:10px ;">9</i> å¥³å­30å¹´å1å¨å </a></li>
						<li class="li002"><a href="#"><i style="color: #999;margin-right:2px ;">10</i> é«æ ¡ä¸æ¼é«ç©ºå¤å </a></li>
					</ul>
				</div>
			</div>
		</div>
		<div style="width: 100%;height:2px;border-top:2px solid #ccc;height:30px;"></div>
		
		<div class="container">
			<div class="hidden-xs hidden-sm col-md-1 col-lg-1" style="margin-top:6px ;">
			</div>
			<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8" style="font:'å¾®è½¯éé»';padding-left:40px;">
				<div style="background:#ddd;height: 1000px;">
										<ul>
						<li style="font: 'å¾®è½¯éé»';font-size:24px ;">æ é¢ æ é¢ æ é¢ æ é¢ æ é¢ æ é¢ </li>
						<li>æ¶é´:2017-5-25 14:21</li>
						<li>ä½è:å¼ ä¸</li>
						<li style="font: 'å¾®è½¯éé»';font-size:18px ;">
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹åå®¹
						</li>
					</ul>
				</div>
			</div>
			<div class="hidden-xs col-sm-4 col-md-3 col-lg-3" style="height:40px;margin-top:0px ;">
				<div style="border-top:2px solid #ed4040;background:#eee;height: 1000px;">
					<div style="width: 100%;height:280;margin: 0px;">
						<ul>
							<li class="li001">ç­é¨æç´¢æè¡</li>
							<li class="li002"><i style="color: #f85959;margin-right:10px ;">1</i> å·ä¹°ææºéè´§é­æ </li>
							<li class="li002"><i style="color: #ff7800;margin-right:10px ;">2</i> 80åå¤«å¦»æ1äº¿ </li>
							<li class="li002"><i style="color: #ffba00;margin-right:10px ;">3</i> 6åæ¥æ¬é´è°è¢«æ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">4</i> å·å¡ä¹°åçæ¬ 3äº¿ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">5</i> ä½ä¸½å¨æ¢ç­éæè¯ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">6</i> æææ´å¤ªå¤é©æªè¢ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">7</i> éæµ·ç®ç©è¢«æå¥æ°´ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">8</i> ç¨åå¾æ¡¶æ¼ç»¿åå·¥ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">9</i> å¥³å­30å¹´å1å¨å </li>
							<li class="li002"><i style="color: #999;margin-right:2px ;">10</i> é«æ ¡ä¸æ¼é«ç©ºå¤å </li>
						</ul>
					</div>
					<div style="width: 100%;height:280px;margin:0px;">
						<ul>
							<li class="li001">ç­é¨æç´¢æè¡</li>
							<li class="li002"><i style="color: #f85959;margin-right:10px ;">1</i> å·ä¹°ææºéè´§é­æ </li>
							<li class="li002"><i style="color: #ff7800;margin-right:10px ;">2</i> 80åå¤«å¦»æ1äº¿ </li>
							<li class="li002"><i style="color: #ffba00;margin-right:10px ;">3</i> 6åæ¥æ¬é´è°è¢«æ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">4</i> å·å¡ä¹°åçæ¬ 3äº¿ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">5</i> ä½ä¸½å¨æ¢ç­éæè¯ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">6</i> æææ´å¤ªå¤é©æªè¢ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">7</i> éæµ·ç®ç©è¢«æå¥æ°´ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">8</i> ç¨åå¾æ¡¶æ¼ç»¿åå·¥ </li>
							<li class="li002"><i style="color: #999;margin-right:10px ;">9</i> å¥³å­30å¹´å1å¨å </li>
							<li class="li002"><i style="color: #999;margin-right:2px ;">10</i> é«æ ¡ä¸æ¼é«ç©ºå¤å </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
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
		<script src="dist/js/jquery.js" type="text/javascript" charset="utf-8"></script>
		<script src="dist/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>