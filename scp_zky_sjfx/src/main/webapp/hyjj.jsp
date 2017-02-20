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
	<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">会议内容</a></h2>
	<div class="hynr">
		<div class="left col-sm-9 col-xs-12">
			<h3>会议主题</h3>
			<h4>1） 食品生物化学专题</h4>
			<p>包括碳水化合物、蛋白质和酶、脂类、核酸、维生素、矿物质、植物化学物等生化与代谢研究，基因工程、细胞工程、酶工程、基因组学、蛋白质组学和代谢组学等与人类健康相关的基础研究。</p>
			<h4>2） 食品微生物学专题</h4>
			<p>包括食品微生物生理与遗传、微生物的相互作用、微生物毒素、致病微生物、预测微生物学和微生物风险评估等基础研究。</p>
			<h4>3） 食品营养与免疫学专题</h4>
			<p>包括分子营养学和临床营养学、生物活性物的成分及其功能评价、细胞因子、食物过敏、分子免疫学、免疫遗传学等基础研究。</p>
			<h4>4） 食品安全与毒理学专题</h4>
			<p>包括食品中风险化合物、重金属等安全检测和毒理学评价，食源性疾病理论研究等。</p>
			<h4>5） 蛋品加工及营养功能专题</h4>
			<p>包括蛋品功能成分研究开发、禽蛋制品加工新技术及质量安全等。</p>
		</div>
		<div class="right col-sm-3 col-xs-12">
			<h3>会议形式</h3>
			<p>国内外知名专家、教授发言</p>
			<div class="line01"></div>
			<h3>会议语言</h3>
			<p>优秀论文代表发言</p>
			<div class="line01"></div>
			<h3>会议地点</h3>
			<p>待定</p>
			<div class="line01"></div>
			<h3>时间提醒</h3>
			<p>会议日期：2017年6月8日-9日
				<br>报到日期：2017年6月7日
				<br>报名截止日期：2017年5月31日
				<br>投稿截止日期：2017年5月31日
				<br>缴费截止日期：2017年6月5日
			</p>
		</div>
		<div class="clear"></div>
	</div>
</div>


<div class="main_bg">
	<div class="main">
		<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">会议介绍</a>
		</h2>
		<div class="hyjs row"><img src="<%=path%>/static/spkx/images/pic02.png" alt="" class="col-sm-5 col-xs-6"/>
			<p class="col-sm-7 col-xs-12">
				食品对于人类健康的重要性不言而喻，中华民族自古就有“寓医于食”的传统，“饮食者，人之命脉也”则是明代医药学巨匠李时珍对膳食营养的健康作用所做的高度概括。世界卫生组织（WHO）近年对影响人类健康的众多因素的评估结果也表明：膳食营养因素的影响（13%）仅次于居首位的遗传因素（15%），远高于医疗因素（仅8%）的作用。不断快速发展的食品科学技术极大地促进了食品种类的多样化和营养的全面均衡，不仅带来了食品产业的繁荣，还促进了人类寿命的延长和生活品质的提高。随着新科技革命的蓬勃发展，尤其是在信息技术、生命科学和纳米技术等领域的快速发展，更是促进了食品科学技术的巨大变革，大力推进了先进科学技术在食品产业中的应用。随着中国工业化、城镇化、老龄化进程加快，肥胖、高血压、糖尿病和冠心病等慢性病患病率呈现持续、快速增长的趋势。如何为消费者提供更营养、更健康的食物，成为我国乃至全球关注的重大课题。全球一系列重大食品安全事件的发生，凸显出技术进步和社会发展对食品数量、质量与安全问题的严峻考验，这已关系到人类乃至下一代的健康和安全，保障食品安全已经成为了保护人类生命健康、提高生活质量、促进食品贸易、维护社会和谐发展的重大政策问题，因此食品科学任重而道远，仍将不断上下求索来应对所有的挑战。</p>
			<div class="clear"></div>
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