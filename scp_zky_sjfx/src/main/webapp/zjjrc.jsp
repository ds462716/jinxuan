﻿<%@page contentType="text/html;charset=utf-8" language="java"%>
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
	<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">
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
						张晓林     &nbsp; &nbsp;中国科学院文献情报中心
						<br>王永吉    &nbsp; &nbsp; 中国科学院软件研究所
						<!-- <br>朱东华  北京理工大学
						<br>武夷山    中国科学技术发展战略研究院 -->
						<br>黎建辉    &nbsp; &nbsp; 中国科学院计算机网络信息中心
					</div>
				</li>
			</ul>
		</div>
		<div class="clear"></div>

	</div>
</div>


<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
		<a href="#">报告专家</a></h2>
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
						张晓林    &nbsp; &nbsp; 中国科学院文献情报中心
						<br>王永吉    &nbsp; &nbsp; 中国科学院软件研究所						
						<br>黎建辉    &nbsp; &nbsp; 中国科学院计算机网络信息中心
						<br>秦　健    &nbsp; &nbsp; 美国雪城大学 
						<br>李广建    &nbsp; &nbsp; 北京大学 
						<br>方　曙    &nbsp; &nbsp; 中国科学院成都文献情报中心 
						<br>王曰芬    &nbsp; &nbsp; 南京理工大学 
						<br>欧石燕    &nbsp; &nbsp; 南京大学 
						<br>张　岩    &nbsp; &nbsp; 北京大学 
						<br>段宇锋    &nbsp; &nbsp; 华东师范大学   
						<br>杨立英    &nbsp; &nbsp; 中国科学院文献情报中心 
						<br>乐小虬    &nbsp; &nbsp; 中国科学院文献情报中心  
						<br>李晨亮    &nbsp; &nbsp; 武汉大学 
						<br>沈志宏    &nbsp; &nbsp; 中国科学院计算机网络信息中心 
						<br>
						<br>(持续更新中……)
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
<%@include file="/inc/footer.jsp"%>
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