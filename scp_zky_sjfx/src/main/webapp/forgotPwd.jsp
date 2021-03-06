<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	<meta name="description" content="首届“数据分析与知识发现”学术研讨会">
	<meta name="author" content="北京国科智地科技有限公司">
	<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">

	<title>首届“数据分析与知识发现”学术研讨会</title>
	
	<!-- Bootstrap core CSS -->
	<link href="<%=path%>/static/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css" />

	<!-- Custom styles for this template -->
	<link href="<%=path%>/static/css/font-awesome.min.css" rel="stylesheet">
	
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<!-- 头部模块 -->
	<%@include file="/inc/headbar.jsp" %>
	<div id="contactWrap">
		<div class="overlay">
			<div class="container">
				<div class="row">
						<div class="col-xs-12">
						<h2 class="sectionTitle">安全中心</h2>
					</div>
				</div>
				<div class="row">
					<form id="loginForm" action="<%=path%>/auth.do?method=forgotPwd" method="post">
					<div class="col-sm-8 col-sm-offset-2">
						<div class="alert alert-warning">${errormsg} 请输入注册邮箱地址，我们将发送安全密码重置说明到此邮箱中，然后根据邮件提示完成操作！</div>
						<div class="inputContainer">
						<label>验证邮箱：</label>
							<input type="email" name="email" id="login_email" value="" class="form-control" autocomplete="off" placeholder="请输入邮箱地址"/>
						</div>
					</div>
					<div class="col-sm-8 col-sm-offset-2">
		        		<button name="submit" type="submit" class="btn btn-primary btn-lg">提交</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div> <!-- /contactWrap -->
	<%@include file="/inc/footer.jsp"%>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
    <script src="<%=path%>/static/js/jquery-1.11.1.min.js"></script>
    <script src="<%=path%>/static/js/bootstrap.min.js"></script>
    <script src="<%=path%>/static/spkx/js/biz.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function() {
		$('.btn-login').off('click').on('click',function(e){
			window.location.href = 'login.jsp?position=contactWrap';
		});
	});
	</script>
</body>
</html>