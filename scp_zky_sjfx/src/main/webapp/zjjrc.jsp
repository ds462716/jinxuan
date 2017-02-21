<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<title>首届“数据分析与知识发现”学术研讨会</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css" />

	<link href="<%=path%>/static/css/font-awesome.min.css" rel="stylesheet">
	<!--    <script src="js/jquery.js" type="text/javascript"></script>-->
	<script src="<%=path%>/static/spkx/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%=path%>/static/spkx/js/tab.js" type="text/javascript"></script>
	<script src="<%=path%>/static/spkx/js/bootstrap.min.js"></script>
</head>

<body>
<!-- 头部模块 -->
<%@include file="/inc/headbar.jsp" %>

<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
		<a href="#">大会主席</a></h2>
	<div class="box_qh" id="qh01">
		<%--<div class="qh_top">
			<ul id="tabs_head">
				<li class='menu_tab_li'><a href="#">荣誉主席</a></li>
				<li class='menu_tab_li'><a href="#">主 席</a></li>
				<li class='menu_tab_li'><a href="#">副主席</a></li>
				<li class='menu_tab_li'><a href="#">委 员</a></li>
			</ul>
		</div>--%>
		<div class="liebbox" id="tabs_body">
			<ul>
				<!--tab模块1-->
				<li id="s_1">
					<%--<div class="txt01">按姓氏拼音排序</div>--%>
					<div class="txtbox col-sm-12 col-xs-12">
						张晓林  中国科学院文献情报中心
						<br>王永吉  中国科学院软件研究所
						<br>朱东华  北京理工大学
						<br>武夷山  中国科学技术发展战略研究院
						<br>黎建辉  中国科学院计算机网络信息中心
					</div>
				</li>
			</ul>
		</div>
		<div class="clear"></div>

	</div>
</div>
<div class="main_bg">
	<div class="main">
		<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
			<a href="#">倒计时</a></h2>
		<div class="row djs">
			<div class="col-md-4 column col-xs-12">
				<h3>距离大会开幕还有</h3>
			</div>
			<div class="col-md-8 column col-xs-12">
				<time>2017-06-08T09:00:00+0100</time>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-12 footer">Copyright © 2007-2017 中国科学院文献情报中心 All Reserved
			<a style="text-transform: none" href="<%=path%>/auth.do?method=logout" target="_blank" title="后台管理">
							<span class="fa-stack fa-lg">
								<i class="fa fa-circle fa-stack-2x"></i>
								<i class="fa fa-list fa-stack-1x fa-inverse"></i>
							</span>
			</a>
		</div>
	</div>
</div>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<c:if test="${not empty register}">
	<script type='text/javascript' src='<%=path%>/dwr/interface/OrderService.js'></script>
</c:if>
<script src="<%=path%>/static/spkx/js/biz.js"></script>
<script src="<%=path%>/static/js/jquery.countdown.js"></script>
<script type="text/javascript">
	$(function(){
		var hash = '${param["position"]}';
		if(hash){
			var target = $('#'+hash);
			if ($(window).width() < 768) {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
					}, 1000);
				}
			}
			else {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
					}, 1000);
				}
			}
		}
		//注册倒计时插件
		$('time').countDown({
			with_separators: false
		});
	});
</script>
</body>
</html>