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
	<script type="text/javascript">
		var app = {
				ctx : '<%=path%>',
				curl : window.location.href,
				maodian : '${position}'||'#header',
				user : {
					id : '${user.id}'/1,
					name : '${user.cnname}'
				},
				register : {
					id : '${register.id}'/1,
					bmflag : '${register.bmflag}'/1,
					username : '${register.username}',
					email : '${register.email}',
					nickname : '${register.nickname}',
					telphone : '${register.telphone}',
					sex : '${register.sex}',
					job : '${register.job}',
					company : '${register.company}',
					message : '${register.message}'
				},
				lunwen : {
					id : '${lunwen.id}'/1,
					filename:'${lunwen.filename}',
					comments:'${lunwen.comments}',
					type:'${lunwen.type}'
				},
				nofile : '${param.nofile}'
			}
	</script>
</head>

<body>
<!-- 头部模块 -->
<%@include file="/inc/headbar.jsp" %>

<div class="main">
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">食宿及交通</a>
	</h2>
	<div class="fyhk">
		<h3>（1）住宿</h3>
		<p>
			入住酒店：北京世纪金源香山商旅酒店（http://www.empark.com.cn/fragranthill/）
			<br/>酒店地址：北京海淀区北正黄旗59号，近香山公园东门
			<br/>房型价格：标间（460元/双早），标间单床位（230元/单早），单人间（420元/单早）
			<br/><b style="font-weight: bold;">房间有限，请完成注册后尽快在个人信息中完善住宿信息，以便会务组为您安排房间。</b>
		</p>
		<h3>（2）交通</h3>
		<p>
		<b style="font-weight: bold">①自行前往会场及酒店</b>
		<br/><b style="font-weight: bold">	北京首都国际机场</b>
		<br/>　　方案一：首都T3航站楼乘坐“机场大巴中关村线”至“中关村（四号桥）站”下车，打车至酒店
		<br/>　　（用时约2小时，费用约70元）
		<br/>　　方案二：首都T3航站楼乘坐“机场大巴中关村线”至“中关村（四号桥）站”下车，向南步行350米，在“保福寺桥南”乘坐“630路”至“香山站”下车，向南步行360米达到酒店
		<br/>　　（用时约2小时40分钟，费用约28元）
		<br/>　　方案三：首都国际机场打车至酒店
		<br/>　　（用时约1小时，费用约150元）
		<br/><b style="font-weight: bold">	北京南站高铁站</b>
		<br/>　　方案一：北京南站乘坐“地铁4号线大兴线”至“北宫门”下车，A出口出站，打车至酒店
		<br/>　　（用时约1小时，费用约30元）
		<br/>　　方案二：北京南站乘坐“地铁4号线大兴线”至“北宫门”下车，A出口乘坐“563路（或563路区间）”至“香山公园东门”下车，向东步行270米到达酒店
		<br/>　　（用时约1小时30分钟，费用约8元）
		<br/>　　方案三：北京南站打车至酒店
		<br/>　　（用时约1小时，费用约100元）
		<br/><b style="font-weight: bold">②乘坐会议班车</b>
		<br/>发车地点：中国科学院文献情报中心西门创新文化广场
		<br/>地址：北京市海淀区中关村北四环西路33号
		<br/>公交站：中关村一街；地铁：地铁4号线中关村站B出口向东500米
		<br/>发车时间：6月7日8:00-21:00循环发车，烦请提前告知到达时间，以便会务组统一安排。
		<br/><b style="font-weight: bold">③会场介绍</b>
		<br/>北京世纪金源香山商旅酒店位于环境优雅的香山东南麓，步行约700米到达香山公园，1000米到达北京植物园，距离颐和园约8公里。秀美的庭院环境、传统的京味小吃、清雅的流香茶品无不让您的香山之旅留下难忘的美好回忆。
		</p>
	</div>
</div>
<%--<div class="main_bg">
	<div class="main">
		<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/>缴费凭据
		</h2>
		<div class="">
			<div class="alert alert-warning">请上传您的缴费凭据</div>
			<div class="form-group">
				<div class="group">
					<label class="col-sm-2 control-label">代表性质:</label>
					<div class="col-sm-4">
						<select id="usertype" class="form-control input-sm" name="usertype">
							<option value="普通代表" ${not empty register and register.usertype eq '普通代表'?'selected="selected"':''}>普通代表</option>
							<option value="在校学生" ${not empty register and register.usertype eq '在校学生'?'selected="selected"':''}>在校学生</option>
							<option value="征文作者" ${not empty register and register.usertype eq '征文作者'?'selected="selected"':''}>征文作者</option>
						</select>
					</div>

					<label class="col-sm-2 control-label">住宿要求:</label>
					<div class="col-sm-4">
						<input class="form-control" id="zsyq" name="zsyq" type="text" value="${register.zsyq}"/>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="group">
					<label class="col-sm-2 control-label">缴费凭据:</label>
					<div class="col-sm-10">
						<input type="file" name="file" id="file" class="form-control" value="${thesis.filename}.${thesis.type}" ${not empty thesis?'style="display: none"':'style="display: inline"'}/>
						<a id="fileName" class="form-control col-sm-10" href="<%=path%>/auth.do?method=download&fileid=${thesis.id}" ${not empty thesis?'style="display: inline"':'style="display: none"'}>${thesis.filename}.${thesis.type}</a>
					</div>
				</div>
			</div>
			<button type="button" class="btn btn-info  " id="btn-clear" data-loading-text="保存中..."
			        autocomplete="off"> 清 除
			</button>
			<button type="button" class="btn btn-success pull-right" id="btn-sendEmail" data-loading-text="保存中..."
			        autocomplete="off"> 提 交
			</button>

		</div>
	</div>
</div>--%>
<%@include file="/inc/footer.jsp"%>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type="text/javascript" src="<%=path%>/dwr/util.js"></script>
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
		/*$("#btn-sendEmail").click(function () {
			if(app.register.id){
				var register = {
					id:app.register.id,
					usertype:$("#usertype").val(),
					zsyq:$("#zsyq").val()
				};
				var files = dwr.util.getValue("file");//这是dwr包提供的util.js文件里面的方法
				var fileName =  $("#file").val();
				if(!fileName){
					alert("请选择需要上传的缴费凭据!");return;
				}

				RegisterService.uploadFile(register,files, fileName,function(ret){
					if(ret) {
						alert("提交成功!");
						window.loaction.reload();
					}
				});
			}else{
				alert("请先登录后再提交!");
				window.location.href = 'login.jsp';
			}
		});*/

	});
</script>
</body>
</html>