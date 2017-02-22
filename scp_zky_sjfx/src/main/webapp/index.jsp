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
<%--头部通知滚动条--%>
<div class="main alert alert-info">
	<marquee behavior="scroll"  width="100%" direction="left" scrollamount="3" onmouseover="this.stop()" onmouseout="this.start()">&nbsp;
	</marquee>
</div>
<div class="main">
	<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">会议介绍</a>
	</h2>
	<div class="hyjs row">
		<p class="col-sm-12 col-xs-12">
			随着信息社会进入大数据时代，信息从供人阅读为主正逐步变化到供机器阅读为主，从检索利用为主逐步深化到挖掘、计算、分析及其可视化呈现，从支持人的理解和再创造为主逐步扩展到支持知识发现和智能决策，从支持少数信息专业人员进行挖掘、分析与发现为主逐步扩展到支持大众利用开放平台和开放工具进行按需动态挖掘、交互、再利用和再创造，从拘泥于信息机构的知识与方法逐步扩展到嵌入各种业务与管理流程的智能工具。在这种环境下，数据挖掘和知识分析成为复杂多变环境和海量信息环境下各行各业知识创新和应用决策的核心竞争力之一，也是数据科学、计算机科学、情报科学、管理科学等多个学科最近及将来研究与应用的重要热点。<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次“数据分析与知识发现”学术会议和培训班将邀请国内外从事相关研究的知名专家，聚焦大数据驱动的数据挖掘、语义计算、内容分析、知识发现、智能决策等方面的技术、方法、系统及机制研究。欢迎从事相关研究和实践工作的人员踊跃报名。
		</p>
		<div class="clear"></div>
	</div>
</div>
<div class="main_bg">
	<div class="main">
		<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
				href="#">会议内容</a></h2>
		<div class="hynr">
			<div class="left col-sm-8 col-xs-12">
				<h3>会议主题：数据分析与知识发现</h3>
				<p>1） 基于数据挖掘的社会计算和社会感知的新方法新技术</p>
				<%--<p>包括碳水化合物、蛋白质和酶、脂类、核酸、维生素、矿物质、植物化学物等生化与代谢研究，基因工程、细胞工程、酶工程、基因组学、蛋白质组学和代谢组学等与人类健康相关的基础研究。</p>--%>
				<p class="bs">2） 基于内容分析的舆情监测、竞争分析、产业竞争力分析的新方法新技术</p>
				<%--<p>包括食品微生物生理与遗传、微生物的相互作用、微生物毒素、致病微生物、预测微生物学和微生物风险评估等基础研究。</p>--%>
				<p>3） 基于大数据的循证政策分析和政策框架建构的新方法新技术</p>
				<%--<p>包括分子营养学和临床营养学、生物活性物的成分及其功能评价、细胞因子、食物过敏、分子免疫学、免疫遗传学等基础研究。</p>--%>
				<p class="bs">4） 数据驱动的科学知识发现的新方法新技术</p>
				<%--<p>包括食品中风险化合物、重金属等安全检测和毒理学评价，食源性疾病理论研究等。</p>--%>
				<p>5） 数据驱动的智能教学的新方法新技术</p>
				<%--<p>包括蛋品功能成分研究开发、禽蛋制品加工新技术及质量安全等。</p>--%>
				<p class="bs">6） 数据驱动的行业智能管理与智能决策的新方法新技术</p>
				<p>7） 数据驱动的校园、社区、城市智能计算的新方法新技术</p>
				<p class="bs">8） 支持数据挖掘与知识发现的知识内容组织机制与方法</p>
				<p>9） 基于非文本数据和富媒体数据的挖掘与分析方法</p>
				<p class="bs">10）支持数据挖掘与知识发现的可视化方法与技术</p>
				<%--<h4>11）数据驱动的行业智能管理与智能决策的新方法新技术</h4>--%>
				<p>12）数据分析与知识发现能力普惠化应用的政策与机制</p>
				<p class="bs">13）大数据环境下数据分析与知识发现面临的法律与文化挑战</p>
				<p>14）其他与数据分析和知识发现密切相关的方法、技术与机制</p>
			</div>
			<div class="right col-sm-4 col-xs-12">
				<h3>会议形式</h3>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;国内外知名专家学术报告、优秀论文代表发言</p>
				<div class="line01"></div>
				<h3>会议语言</h3>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中文</p>
				<div class="line01"></div>
				<h3>会议地点</h3>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京，具体地址待定</p>
				<div class="line01"></div>
				<h3>时间提醒</h3>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议日期：2017年6月8日-9日
					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;报到日期：2017年6月7日
					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;报名截止日期：2017年5月31日
					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;投稿截止日期：2017年5月31日
					<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;缴费截止日期：2017年6月5日
				</p>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
<div class="main">
	<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">组织机构</a>
	</h2>
	<div class="zzjg row">
		<div class="col-sm-6 col-xs-12">
			<div class="left">
				<h3>主办单位</h3>
				<p>中国科学院文献情报中心</p>
				<h3>承办单位</h3>
				<p>中国科学院文献情报中心科技期刊与知识服务中心
					<br> 《数据分析与知识发现》编辑部
				</p>
			</div>
		</div>
		<div class="col-sm-6 col-xs-12">
			<div class="right">
				<img src="<%=path%>/static/spkx/images/pic01.png" alt=""/>
				<%--<h3>支持协办</h3>
				<p>美国国际谷物化学家学会（AACCI）
					<br> 《Journal of Food Science》杂志（SCI收录）
					<br> 《Journal of Agricultural and Food Chemistry》杂志（SCI收录）
					<br> 《Food and Bioprocess Technology》杂志（SCI收录）
					<br> 《Journal of Functional Foods》杂志（SCI收录）
					<br> 《Food Chemistry》杂志（SCI收录）
					<br> 《Journal of Food and Drug Analysis》杂志（SCI收录）</p>--%>
			</div>
		</div>
		<div class="clear"></div>
	</div>
</div>

<div class="main_bg">
	<div class="main">
		<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>
			<a href="#">大会主席</a></h2>
		<div class="box_qh" id="qh01">
			<div class="liebbox" id="tabs_body">
				<div class="txtbox col-sm-12 col-xs-12">
					张晓林 中国科学院文献情报中心
					<br>王永吉 中国科学院软件研究所
					<br>朱东华 北京理工大学
					<br>武夷山 中国科学技术发展战略研究院
					<br>黎建辉 中国科学院计算机网络信息中心
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>


	<div class="main">
		<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
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

<div class="main_bg">
	<div class="main">
		<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">时间&地点</a>
		</h2>
		<div class="fyhk">
			<p>会议时间：2016年6月8日-9日（6月7日报到，10日离会）
				<br>会议地点：北京，具体地址待定。
			</p>
		</div>
	</div>
</div>

<div class="main">
	<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">缴费&食宿</a>
	</h2>
	<div class="fyhk">
		<h3>会议培训费</h3>
		<p>（1）参会费用
			<br>普通代表：1600元，学生代表：800元，征文作者：800元。请于2017年6月5日前完成缴费。会议现场报名缴费标准：2000元。
			上述费用含：会议培训费、资料费、餐费等，住宿及交通费用自理。
			<br>（2）付款方式
			<br>①转账汇款（公对公转账）：汇款后请及时将汇款凭证拍照上传至会议网站，或发送至邮箱：jishu@mail.las.ac.cn；
			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单位名称：中国科学院文献情报中心
			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;账 号：0200 0045 0908 8129 221
			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;开户行：北京工行海淀西区支行
			<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;附言：姓名+会议费
			<br>②支票（京区代表）：收款方为“中国科学院文献情报中心”。
			<br>③现金：到《数据分析与知识发现》编辑部直接交费。
			<br>（3）其它说明
			<br>本次培训费不能提供刷公务卡服务；发票开具内容为“培训费”；个人汇款无法开具对公发票；发票抬头请与贵单位财务人员反复核实，发票一经开出，恕不能退换；发票丢失不能重开，也不能复印发票，国家税务部门明确发票复印盖章无效。
		</p>
		<h3>食宿 </h3>
		<p>具体信息待定。
		</p>
	</div>
</div>

<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a
			href="#">会务组</a></h2>
	<div class="hw_zs">
		<div class="col-sm-12 col-xs-12" style="padding:0;">
			<div class="left">
				<p>联系人：李春源（13651248379），彭希珺（13671321068）
					<br> 地址：北京市中关村北四环西路33号5D 中国科学院文献情报中心《数据分析与知识发现》编辑部
					<br> 电话/传真：+86-010-82624938
					<br> E-mail: jishu@mail.las.ac.cn </p>
			</div>
		</div>
		<%--<div class="col-sm-7 col-xs-12">
			<div class="right">
				<h3>广告招商招展</h3>
				<p>会刊广告、会场广告、会场产品展示
					<br> 详情请拨打广告招商招展热线：010-83155438
					<br> 传真：010-83152138
					<br>
					<a href="down/第三届食品科学与人类健康国际研讨会招商招展回执.doc" target="_blank">招商招展回执</a></p>
			</div>
		</div>--%>
		<div class="clear"></div>
	</div>
</div>

<div class="main_bg">
	<div class="main">
		<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">签到&关注</a></h2>
		<div class="fyhk">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-6">
						<p style="text-align:center;">
							<img src="<%=path%>/static/spkx/images/qrcode.png" width="280" height="280"/>
							<br/>会议签到二维码
						</p>
					</div>
					<div class="col-sm-6">
						<p style="text-align:center;">
							<img src="<%=path%>/static/spkx/images/qrcode_wx.png" width="280" height="280"/>
							<br/>关注官方微信公众号<br/>（打开微信扫一扫）
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%--<div class="main_bg" style="margin:0;">
	<div class="main">
		<h2><span><a href="#">查看更多+</a></span><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">报名方式</a>
		</h2>
		<div class="bmfs">
			<div class="time">
				<h4>会议注册截止时间 </h4> 论文征集截止日期： 2017 年7 月5 日
				<br>会议报名截止日期： 2017年 7月 25 日
			</div>
			<h3>1、手机微信扫描下方二维码报名</h3>
			<p>手机微信扫描下方二维码报名</p>
			<div class="ewm"><img src="<%=path%>/static/spkx/images/ewm01.png"></div>

			<h3>2、网上报名</h3>
			<p>登录我刊网站<a href="http://www.chnfood.cn" target="_blank">www.chnfood.cn</a>，点击进入会议主页进行网上报名。</p>

			&lt;%&ndash;<p>两种报名方式采用其中一种即可，不需重复报名，推荐采用微信及网上报名方式。
				<br> 会务组收到报名信息后，会尽快向参会代表电子邮箱发送电子版邀请函，同时邮寄纸质版邀请函，请务必准确填写电子邮箱、详细地址及邮编、电话号码。
			</p>&ndash;%&gt;
			<p>更多会议信息请关注食品科学微博和微信</p>
			<div class="ewm"><span class="col-sm-6 col-xs-12" style="padding-top:0;"><img
					src="<%=path%>/static/spkx/images/ewm02.png"><span>食品科学订阅号</span></span><span
					class="col-sm-6 col-xs-12"
					style="padding-top:0;"><img
					src="<%=path%>/static/spkx/images/ewm01.png"><span>食品科学服务号</span></span></div>
		</div>
	</div>
</div>--%>
<%@include file="/inc/footer.jsp"%>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/NoticeService.js'></script>
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
		//获取后台通知内容
		NoticeService.getAllEnabledNotice(function (notices) {
			$("marquee").html('');
			var trs='通知：';
			$.each(notices, function (index, n) {
				if(notices.length==1){
					trs+=n.content;
				}else{
					trs+=(index+1)+'.'+n.content+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
				}
			});
			$("marquee").append(trs);
		});
	});
</script>
</body>
</html>