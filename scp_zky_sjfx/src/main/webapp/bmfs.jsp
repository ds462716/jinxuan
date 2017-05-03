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
	<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">
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
			href="#">报名方式</a></h2>

	<div class="bmfs row">
		<div class="col-sm-12 col-xs-12">
			<p>
			本次会议共提供两种报名方式，请任选其一，切勿重复报名，并务必准确填写电子邮箱及电话号码。
			（1）登录会议网站主页（http://www.infotech.ac.cn/conference），点击“报名参会”进行网上报名。
			（2）手机扫描下方二维码报名。
			<div class="ewm" style="text-align: center;"><img src="<%=path%>/static/spkx/images/ewm01.png"></div>
			</p>
		</div>
		<%--<div class="col-sm-4 col-xs-12">--%>
			<%--<div class="time">--%>
				<%--<h4>会议注册截止时间 </h4>--%>
				<%--报名截止日期：2017年 5月 31 日--%>
				<%--<br>投稿截止日期：2017年 5月 31 日--%>
				<%--<br>缴费截止日期：2017年 6月 5 日--%>
			<%--</div>--%>
		<%--</div>--%>
	</div>

	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">会议培训费</a></h2>

	<div class="bmfs row">
		<div class="col-sm-12 col-xs-12">
			<p>（1）参会费用
				<br>普通代表：1600元，学生代表：800元，征文作者：800元。请于2017年6月5日前完成缴费。会议现场报名缴费标准：2000元。
				上述费用含：会议培训费、资料费、餐费等，住宿及交通费用自理。
				<br>（2）付款方式
				<br>①转账汇款（公对公转账）：汇款后请及时将汇款凭证拍照上传至会议网站的个人中心，或发送至邮箱：jishu@mail.las.ac.cn；
				<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单位名称：中国科学院文献情报中心
				<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;账 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：0200 0045 0908 8129 221
				<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开&nbsp;&nbsp;户&nbsp;&nbsp;行：北京工行海淀西区支行
				<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;附 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;言：姓名+数据分析会议费
				<br>②支票（京区代表）：收款方为“中国科学院文献情报中心”。
				<br>③现金：到《数据分析与知识发现》编辑部直接交费。
				<br>（3）其它说明
				<br>本次培训费不能提供刷公务卡服务；发票开具内容为“培训费”；个人汇款无法开具对公发票；发票抬头请与贵单位财务人员反复核实，发票一经开出，恕不能退换；发票丢失不能重开，也不能复印发票，国家税务部门明确发票复印盖章无效。
			</p>
		</div>
	</div>
</div>
<%@include file="/inc/footer.jsp" %>
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