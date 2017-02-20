<%@page contentType="text/html;charset=utf-8" language="java" %>
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
	<meta name="viewport"
	      content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
	<title>首届“数据分析与知识发现”学术研讨会</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css"/>

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
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">会议征稿</a></h2>
	<div class="hylw">
		<h4>征文要求</h4>
		<p>本次大会征文主题见会议主题范围，具体要求：
			<br>（1）研究问题明确、具体，论点明确；未公开发表。
			<br>（2）层次清晰，结构严谨，文笔精炼，6000-8000字为宜。
			<br>（3）严格遵守期刊学术规范和格式要求。请参照《数据分析与知识发现》网站“作者指南”
			<br>中系列规范。
			<br>（4）通过本刊官方网站（<a href="http://www.infotech.ac.cn" target="_blank">http://www.infotech.ac.cn</a>）提交论文。论文投稿时文题前请标识
			“学术会议”，如：“学术会议：数据驱动的知识发现”。投稿截止时间为2016年5月30日。
		<h4>出版事宜</h4>
		<p>邀请学科专家组成论文评审委员会，对论文进行同行评议。录用论文将择期在《数据分析与知识发现》期刊中正式公开发表，免收发表费。</p>
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
<script type="text/javascript">
	$(function () {
		var hash = '${param["position"]}';
		if (hash) {
			var target = $('#' + hash);
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
	});
</script>
</body>
</html>