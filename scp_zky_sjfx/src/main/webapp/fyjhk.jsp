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
	<h2><img src="<%=path%>/static/spkx/images/ico_tt.png" alt=""/><a href="#">缴费&食宿</a>
	</h2>
	<div class="fyhk">
		<h3>会议培训费</h3>
		<p>（1）参会费用
			<br>普通代表：1600元，学生代表：800元，征文作者：800元。请于2017年6月5日前完成缴费。会议现场报名缴费标准：2000元。
			上述费用含：会议培训费、资料费、餐费等，住宿及交通费用自理。
			<br>（2）付款方式
			<br>①转账汇款（公对公转账）：汇款后请及时将汇款凭证拍照上传至会议网站，或发送至邮箱：jishu@mail.las.ac.cn；
			单位名称：中国科学院文献情报中心
			账 号：0200 0045 0908 8129 221
			开户行：北京工行海淀西区支行
			附言：姓名+会议费
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