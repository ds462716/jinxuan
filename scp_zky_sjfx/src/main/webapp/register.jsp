<%@page contentType="text/html;charset=utf-8" language="java" %>
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
	<meta name="author" content="中国科学院文献情报中心">
	<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">

	<title>首届“数据分析与知识发现”学术研讨会</title>

	<!-- Bootstrap core CSS -->
	<link href="<%=path%>/static/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=path%>/res/css/bootstrap-datetimepicker.min.css">

	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css"/>

	<!-- Custom styles for this template -->
	<link href="<%=path%>/static/css/font-awesome.min.css" rel="stylesheet">
	<script src="<%=path%>/static/js/jquery-1.11.1.min.js"></script>
	<script src="<%=path%>/static/js/bootstrap.min.js"></script>
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
	<form id="registerForm">
		<div class="overlay">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<h2 class="sectionTitle">
							${not empty register?'个人中心':'会议注册'}
						</h2>
						<p class="animated">请在下方表单中，完善您的个人信息.</p>


						<%--<h2 class="sectionTitle">
							${not empty register?'个人中心':'用户注册'}
						</h2>--%>
					</div>
				</div>
				<input type="text" name="id" id="id" class="hide"  value="${register.id}">
				<div class="row">
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label>邮箱：</label>
							<input type="text" name="email" id="email" class="form-control" autocomplete="off" placeholder="请输入邮箱地址"
							       value="${register.email}" ${not empty register?'disabled="disabled"':''}>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text" >联系电话：</label>
							<input type="text" name="telphone" id="telphone" placeholder="手机 / 固话"
							       value="${register.telphone}" class="form-control"
							       autocomplete="off" />
						</div>

					</div>
					<div class="col-sm-4 col-sm-offset-2 register-adv">
						<div class="inputContainer">
							<label class="screen-reader-text">会员密码：</label>
							<input type="password" name="password" id="password" value="" class="form-control" placeholder="${empty register?'请输入密码':'如要修改请输入,否则请留空'}"
							       autocomplete="off"/>
						</div>
					</div>
					<div class="col-sm-4 register-adv" >
						<div class="inputContainer">
							<label class="screen-reader-text">确认密码：</label>
							<input type="password" name="repassword" id="repassword" value="" class="form-control" placeholder="${empty register?'请输入确认密码':'如要修改请输入,否则请留空'}"
							       autocomplete="off"/>
						</div>
					</div>
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">姓名：</label>
							<input type="text" name="nickname" id="nickname"  class="form-control" autocomplete="off"
							       value="${register.nickname}"  placeholder="真实姓名 / 昵称"/>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">性别：</label>
							<div class="form-control" style="line-height:20px;">
								<label class="radio-inline">
									<input type="radio" name="sex" id="sex1"
									       value="男" ${register.sex eq '男' or empty regisgter?'checked':''} >
									男
								</label>
								<label class="radio-inline">
									<input type="radio" name="sex" id="sex2"
									       value="女" ${register.sex eq '女'?'checked':''} >
									女
								</label>
							</div>
						</div>
					</div>
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">职称/职务：</label>
							<input type="text" name="job" id="job" class="form-control" autocomplete="off" placeholder="请输入职称/职务"
							       value="${register.job}"  />
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">单位：</label>
							<input type="text" name="company" id="company" placeholder="请输入单位"
							       value="${register.company}" class="form-control" autocomplete="off" />
						</div>
					</div>
					<c:if test="${not empty register}">
					<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">代表性质：</label>
							<select id="usertype" class="form-control input-sm" name="usertype">
								<option value="普通代表" ${not empty register and register.usertype eq '普通代表'?'selected="selected"':''}>普通代表</option>
								<option value="在校学生" ${not empty register and register.usertype eq '在校学生'?'selected="selected"':''}>在校学生</option>
								<option value="征文作者" ${not empty register and register.usertype eq '征文作者'?'selected="selected"':''}>征文作者</option>
							</select>
							<%--<input type="text" name="job" id="job" class="form-control" autocomplete="off" placeholder="非必填"--%>
							       <%--value="${register.job}"  />--%>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">住宿要求：</label>
							<input type="text" name="zsyq" id="zsyq" placeholder="住宿要求"
							       value="${register.zsyq}" class="form-control" autocomplete="off" />
						</div>
					</div>


					<%--<c:if test="${not empty thesis}">--%>
					<div class="col-sm-8 col-sm-offset-2" >
						<div class="inputContainer">
							<label class="screen-reader-text">缴费凭据：</label>
							<input type="file" name="file" id="file" class="form-control" value="${thesis.filename}.${thesis.type}" ${not empty thesis?'style="display: none"':'style="display: inline"'} />
							<%--<a id="fileName" class="form-control " href="<%=path%>/auth.do?method=download&fileid=${thesis.id}" ${not empty thesis?'style="display: inline"':'style="display: none"'}>${thesis.filename}.${thesis.type}</a><span class="input-group-addon" >重新上传</span>--%>
							<div class="" id="fileName" ${not empty thesis?'style="display: inline"':'style="display: none"'}>
								<a  class="form-control "  href="<%=path%>/auth.do?method=download&fileid=${thesis.id}" >${thesis.filename}.${thesis.type}</a>
								<span class="btn btn-default" style=" width: 20% ;float: right ;margin-top: -46px" id="btn-clear" >重新上传</span>
							</div>

						<%--<a class="form-control" href="<%=path%>/auth.do?method=download&fileid=${thesis.id}">${thesis.filename}.${thesis.type}</a>--%>
						</div>
					</div>
					</c:if>
					<%--</c:if>--%>
					<%--<div class="col-sm-4 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">是否报告：</label>
							<div style="line-height:20px;">
								<label class="radio-inline">
									<input class="sfbg_radio" type="radio" name="sfbg" id="sfbg1" value="否" checked> 否
								</label>
								<label class="radio-inline">
									<input class="sfbg_radio" type="radio" name="sfbg" id="sfbg2" value="是"> 是
								</label>
								<input type="text" id="sfbg_input" name="sfbg" style="margin-left:10px;width:263px;height:38px;line-height: 38px;" placeholder="报告题目" disabled />
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="inputContainer">
							<label class="screen-reader-text">是否考察：</label>
							<div class="form-control" style="line-height:20px;">
								<label class="radio-inline">
									<input type="radio" name="sfkc" id="sfkc1" value="否" checked> 否
								</label>
								<label class="radio-inline">
									<input type="radio" name="sfkc" id="sfkc2" value="是"> 是
								</label>
							</div>
						</div>
					</div>
					<div class="col-sm-8 col-sm-offset-2">
						<div class="inputContainer">
							<label class="screen-reader-text">是否安排住宿：</label>
							<div style="line-height:20px;">
								<label class="radio-inline">
									<input type="radio" class="sfzs_radio" name="sfzs" id="sfzs1" value="否" checked> 否
								</label>
								<label class="radio-inline">
									<input type="radio" class="sfzs_radio" name="sfzs" id="sfzs2" value="是"> 是
								</label>
								<select id="sfzs_select" name="sfzs" style="margin-left:10px;width:653px;height:38px;line-height: 38px;" disabled>
									<option value="否">选择住宿标准</option>
									<option value="大床房246元/元">大床房246元/元</option>
									<option value="标准间246元/元">标准间246元/元</option>
								</select>
							</div>
						</div>
					</div>--%>
					<div class="col-sm-8 col-sm-offset-2">
						<c:choose>
							<c:when  test="${empty register}">
							<button id="registerBtn" name="submit" type="button" class="btn btn-primary btn-lg">马上注册</button>
							</c:when >
							<c:otherwise>
								<button id="editBtn" name="submit" type="button" class="btn btn-primary btn-lg">确定修改</button>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</form>
</div> <!-- /contactWrap -->
<footer>
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
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type="text/javascript" src="<%=path%>/dwr/util.js"></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<c:if test="${not empty register}">
	<script type='text/javascript' src='<%=path%>/dwr/interface/OrderService.js'></script>
</c:if>

<!-- bootstrap日期控件 -->
<script src="<%=path%>/res/js/bootstrap-datetimepicker.min.js"></script>
<!-- 格式化输入 -->
<script src="<%=path%>/res/js/jquery.inputmask.bundle.js"></script>
<script src="<%=path%>/res/js/common.js"></script>
<script src="<%=path%>/static/spkx/js/biz.js"></script>

<script type="text/javascript">
	$("#btn-clear").click(function () {
		$("#fileName").attr('style','display: none');
		$("#file").attr('style','display: inline');

		var file = $("#file")
		file.after(file.clone().val(""));
		file.remove();
		file.val('');
	});
	function not_pc() {
		var os = new Array("Android", "iPhone", "Windows Phone", "iPod", "BlackBerry", "MeeGo", "SymbianOS");  // 其他类型的移动操作系统类型，自行添加
		var info = navigator.userAgent;
		var len = os.length;
		for (var i = 0; i < len; i++) {
			if (info.indexOf(os[i]) >= 0) {
				return true;
			}
		}
		return false;
	}

	$(document).ready(function () {
		$("#numeric").inputmask('Regex', { regex: "[a-zA-Z0-9._%-]+@[a-zA-Z0-9-]+\\.[a-zA-Z]{2,4}" });
		if (not_pc()) {
			$('.pc_show').hide();
			$('#zftb_zfb').attr('src', '<%=path%>/static/assets/img/aliwap.png');
			$('#zftb_wx').attr('src', '<%=path%>/static/assets/img/wechatgzh.png');
			$('#zftb_yl').attr('src', '<%=path%>/static/assets/img/icon-unwap.png');
		} else {
			$('.pc_hide').hide();
		}

		$('.btn-newpay').off('click').on('click', function (e) {
			var register = {
				id: '${register.id}',
				zfflag: '0'
			}
			RegisterService.updateRegisterPaystatus(register, function (ret) {
				if (ret)
					window.location.reload();
			});
		});

		$('.btn-deleteorder').off('click').on('click', function (e) {
			var order = {id: $(this).data('id'), orderregisterid: $(this).data('orderregisterid')};
			OrderService.deleteOrder(order, function (ret) {
				if (ret) {
					window.location.reload();
				}
			});
		});

		$('#isAutoLogin').on('change', function (e) {
			if ($(this).prop('checked')) {
				$('.register-adv').show();
			} else {
				$('.register-adv').hide();
			}
		});

		$('#payBtn').off('click').on('click', function (e) {
			var that = this;
			var invoice = getInvoiceValue();
			var fptt = $('#fptt').val();
			var rid = '${register.id}';

			if ($('input[name="invoice"]:checked').val() == '需要') {
				if (!$('input[name="invoice_chk"]:checked').val()) {
					alert('请选择开票内容！');
					return;
				}
				if (!fptt) {
					$('#fptt').focus().attr('placeholder', '请填写发票抬头！');
					return;
				}
			}

			//先更新会员发票信息，再生成支付订单
			$(that).addClass('disabled');
			RegisterService.updateRegisterInvoice(invoice, fptt, rid, function (success) {
				//如果不需要发票则不生成订单
				if (success) {
					if (invoice == '不需要') {
						$(that).removeClass('disabled');
						return;
					}
					var order = {
						orderregisterid: '${register.id}',
						orderuname: '${register.nickname}',
						ordertype: $('input[name="ordertype"]:checked').val(),
						ordertitle: '会议费订单',
						orderno: '',//由后台生成
						orderstatus: 0,
						ordermoney: $('input[name="ordermoney"]:checked').val(),
						orderrebackmsg: '',
						orderremark: '',
						orderaccount: ''
					}

					OrderService.addOrderAndPay(order, function (ret) {
						$(that).removeClass('disabled');
						if (ret.success) {
							var payPage = "";
							if (order.ordertype == 1)
								payPage = "alipay.jsp?qd=" + (!not_pc() ? "ALI_WEB" : 'ALI_WAP');
							else if (order.ordertype == 2)
								payPage = "wxpay.jsp?qd=" + (!not_pc() ? "WX_NATIVE" : 'WX_JSAPI');
							else if (order.ordertype == 3)
								payPage = "ylpay.jsp?qd=" + (!not_pc() ? "UN_WEB" : 'UN_WAP');
							// window.open(payPage+'?orderno='+ret.order.orderno+'&ordermoney='+ret.order.ordermoney + '&ordertitle='+order.ordertitle);
							// window.location.reload();
							window.location.href = payPage + '&orderno=' + ret.order.orderno + '&ordermoney=' + order.ordermoney + '&rid=' + order.orderregisterid;
						} else {
							alert('订单生成失败，请稍后重试');
							window.location.href = 'index.jsp';
						}
					});
				}
			});
		});

		function getInvoiceValue() {
			var v = $('input[name="invoice"]:checked').val();
			if (v == '需要') {
				v = [];
				$('input[name="invoice_chk"]:checked').each(function (index, chk) {
					v.push($(chk).val());
				});
				v = v.join('、');
			}
			return v || '不需要';
		}

		//注册按钮
		$('#registerBtn').off('click').on('click', function (e) {

			var that = this;
			var register = {
				username: '',
				nickname: $('#nickname').val(),
				password: $('#password').val() || '123',
				sex: $('input[name="sex"]:checked').val(),
				job: $('#job').val(),
				title: $('#title').val(),
				company: $('#company').val(),
				officephone: $('#officephone').val(),
				telphone: $('#telphone').val(),
				email: $('#email').val(),
				address: $('#address').val(),
				postcode: $('#postcode').val(),
				sfztlw: $('input[name="sfztlw"]:checked').val(),
				sfsqhyfy: $('input[name="sfsqhyfy"]:checked').val(),
				sffblw: $('input[name="sffblw"]:checked').val(),
				gjbh: $('#gjbh').val(),
				journalname: $('#journalname').val(),//稿件期刊
				gjtm: $('#gjtm').val(),//论文题目
				zsyq: $('input[name="zsyq"]:checked').val(),
				zskssj: $('#zskssj').val(),
				zsjssj: $('#zsjssj').val(),

				gzqk: '',
				fax: '',
				degree: '',
				invoice: '',
				sfcjsx: '',
				sxxl: '',
				fptt: '',
				gjzt: '',
				fytm: $('#fytm').val(),
				fynrzy: $('#fynrzy').val(),
				sfzs: '',
				yqhfszt: '',
				// invoice:getInvoiceValue(),
				// sfcjsx:$('input[name="sfcjsx"]:checked').val(),
				// sxxl:$('input[name="sfcjsx"]:checked').val() == '参加'?$('#sxxl').val():'',
				// fptt:$('#fptt').val(),

				message: $('#message').val()
			};
			if (!register.email) {
				$('#email').focus().attr('placeholder', '该项不能为空！');
				return;
			}else {
				if(!isEmail(register.email)){
					alert("Email格式不正确");
					$('#email').focus();
					return;
				}
			}
			if (!register.telphone) {
				$('#telphone').focus().attr('placeholder', '该项不能为空！');
				return;
			}


			//密码校验
			if (!register.password) {
				$('#password').focus().attr('placeholder', '密码不能为空！');
				return;
			}
			if (register.password != $('#repassword').val()) {
				alert('两次输入密码不一致！');
				$('#repassword').focus();
				return;
			}
			if (!register.nickname) {
				$('#nickname').focus().attr('placeholder', '该项不能为空！');
				return;
			}
			/*if (!register.title) {
				$('#title').focus().attr('placeholder', '该项不能为空！');
				return;
			}
			if (!register.job) {
				$('#job').focus().attr('placeholder', '该项不能为空！');
				return;
			}


			if (!register.company) {
				$('#company').focus().attr('placeholder', '该项不能为空！');
				return;
			}
			if (!register.postcode) {
				$('#postcode').focus().attr('placeholder', '该项不能为空！');
				return;
			}
			if (!register.address) {
				$('#address').focus().attr('placeholder', '该项不能为空！');
				return;
			}

			if ($('input[name="invoice"]:checked').val() == '需要') {
				if (!$('input[name="invoice_chk"]:checked').val()) {
					alert('请选择开票内容！');
					return;
				}
				if (!register.fptt) {
					$('#fptt').focus().attr('placeholder', '请填写发票抬头！');
					return;
				}
			}*/

			// $(that).addClass('disabled');
			RegisterService.hasRegisterByTel(register, function (has) {
				$("#registerBtn").prop('disabled', true);
				if (!has) {
					//注册：参数说明register为注册信息,isSendMail表示是否发送邮件
					var isSendMail = true;
					RegisterService.register(register, isSendMail, function (msg) {
						if (msg) {
							alert('报名成功，请查收邮件回执!');
							$(that).removeClass('disabled');
							$('#registerForm')[0].reset();
							$("#registerBtn").prop('disabled', false);
							// if($('#isAutoLogin').prop('checked')){
							window.location.reload();
							// }
						}
					});
				} else {
					alert('该邮件报名者已经存在，请不要重复报名！');
					$("#registerBtn").prop('disabled', false);
					$('#telphone').focus();
					$(that).removeClass('disabled');
				}
			});
		});
		//修改按钮
		$('#editBtn').off('click').on('click', function (e) {
			var that = this;
			var register = {
				id: $('#id').val(),
				nickname: $('#nickname').val(),
				password: $('#password').val() ,
				sex: $('input[name="sex"]:checked').val(),
				job: $('#job').val(),
				title: $('#title').val(),
				company: $('#company').val(),
				officephone: $('#officephone').val(),
				telphone: $('#telphone').val(),
				email: $('#email').val(),
				address: $('#address').val(),
				postcode: $('#postcode').val(),
				sfztlw: $('input[name="sfztlw"]:checked').val(),
				sfsqhyfy: $('input[name="sfsqhyfy"]:checked').val(),
				sffblw: $('input[name="sffblw"]:checked').val(),
				gjbh: $('#gjbh').val(),
				journalname: $('#journalname').val(),//稿件期刊
				gjtm: $('#gjtm').val(),//论文题目
				zsyq: $('#zsyq').val(),
				usertype: $('#usertype').val(),
				zskssj: $('#zskssj').val(),
				zsjssj: $('#zsjssj').val(),

				gzqk: '',
				fax: '',
				degree: '',
				invoice: '',
				sfcjsx: '',
				sxxl: '',
				fptt: '',
				gjzt: '',
				fytm: $('#fytm').val(),
				fynrzy: $('#fynrzy').val(),
				sfzs: '',
				yqhfszt: '',
				// invoice:getInvoiceValue(),
				// sfcjsx:$('input[name="sfcjsx"]:checked').val(),
				// sxxl:$('input[name="sfcjsx"]:checked').val() == '参加'?$('#sxxl').val():'',
				// fptt:$('#fptt').val(),

				message: $('#message').val()
			};
			if (!register.email) {
				$('#email').focus().attr('placeholder', '该项不能为空！');
				return;
			}else {
				if(!isEmail(register.email)){
					alert("Email格式不正确");
					$('#email').focus();
					return;
				}
			}
			if (!register.telphone) {
				$('#telphone').focus().attr('placeholder', '该项不能为空！');
				return;
			}

			/*//密码校验
			if (!register.password) {
				$('#password').focus().attr('placeholder', '密码不能为空！');
				return;
			}*/
			if ((register.password) &&register.password != $('#repassword').val()) {
				alert('两次输入密码不一致！');
				$('#repassword').focus();
				return;
			}
			if (!register.nickname) {
				$('#nickname').focus().attr('placeholder', '该项不能为空！');
				return;
			}
			/*if (!register.title) {
			 $('#title').focus().attr('placeholder', '该项不能为空！');
			 return;
			 }
			 if (!register.job) {
			 $('#job').focus().attr('placeholder', '该项不能为空！');
			 return;
			 }


			 if (!register.company) {
			 $('#company').focus().attr('placeholder', '该项不能为空！');
			 return;
			 }
			 if (!register.postcode) {
			 $('#postcode').focus().attr('placeholder', '该项不能为空！');
			 return;
			 }
			 if (!register.address) {
			 $('#address').focus().attr('placeholder', '该项不能为空！');
			 return;
			 }

			 if ($('input[name="invoice"]:checked').val() == '需要') {
			 if (!$('input[name="invoice_chk"]:checked').val()) {
			 alert('请选择开票内容！');
			 return;
			 }
			 if (!register.fptt) {
			 $('#fptt').focus().attr('placeholder', '请填写发票抬头！');
			 return;
			 }
			 }*/

			// $(that).addClass('disabled');
			$("#editBtn").prop('disabled', true);
			//注册：参数说明register为注册信息,isSendMail表示是否发送邮件
			var isSendMail = false;
			var files = dwr.util.getValue("file");//这是dwr包提供的util.js文件里面的方法
			var fileName =  $("#file").val();
			RegisterService.register(register, isSendMail,files,fileName, function (msg) {
				if (msg) {
					alert('修改成功!');
					$(that).removeClass('disabled');
//							$('#registerForm')[0].reset();
					$("#editBtn").prop('disabled', false);
					// if($('#isAutoLogin').prop('checked')){
					window.location.reload();
					// }
				}
			});
		});
		$('input[name="invoice"]').change(function (event) {
			if ($('input[name="invoice"]:checked').val() == '不需要') {
				$('.check-group').hide();
				$('.register-pay').hide();
				// $('#payBtn').prop('disabled',true);
				$('#payBtn').html('确定');
				$('#invoice_msg').html('说明：请与客服联系线下付款！');
			} else {
				$('.check-group').show();
				$('.register-pay').show();
				// $('#payBtn').prop('disabled',false);
				$('#payBtn').html('生成订单并支付');
				$('#invoice_msg').html('说明：会议费发票由中国科学院文献情报中心开具，实习费由当地旅行社开具。');
			}
		});

		$('input[name="sfcjsx"]').change(function (event) {
			if ($('input[name="sfcjsx"]:checked').val() == '不参加')
				$('.select-sxxl').hide();
			else
				$('.select-sxxl').show();
		});

		$('.btn-register').off('click').on('click', function (e) {
			var target = $('#contactWrap');
			if ($(window).width() < 768) {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
					}, 1000);
					return false;
				}
			}
			else {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
					}, 1000);
					return false;
				}
			}
		});

		$('.btn-login').off('click').on('click', function (e) {
			 window.location.href = 'login.jsp';
			// 由于很多人已经在没有设置密码时期报名，暂时改为直接用手机号无需密码登录
//			window.location.href = 'loginWithoutPwd.jsp';
		});

		$('.btn-logout').off('click').on('click', function (e) {
			RegisterService.logout(function () {
				// window.location.reload();
				window.location.href = 'login.jsp';
//				window.location.href = 'loginWithoutPwd.jsp';
			});
		});

		$('a[href*=#]:not([href=#])').click(function () {
			if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
				var target = $(this.hash);
				target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
				if ($(window).width() < 768) {
					if (target.length) {
						$('html,body').animate({
							scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
						}, 1000);
						return false;
					}
				}
				else {
					if (target.length) {
						$('html,body').animate({
							scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
						}, 1000);
						return false;
					}
				}

			}
		});

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

		$('#toTop').click(function () {
			$('html,body').animate({
				scrollTop: 0
			}, 1000);
		});

		var timer;
		$(window).bind('scroll', function () {
			clearTimeout(timer);
			timer = setTimeout(refresh, 50);
		});
		var refresh = function () {
			if ($(window).scrollTop() > 100) {
				$(".tagline").fadeTo("slow", 0);
			}
			else {
				$(".tagline").fadeTo("slow", 1);
			}
		};

		// Mobile Navigation
		$('.nav').find('a').on('click', function () {
			var menuBtn = $('.navbar-toggle');
			if (menuBtn.css('display') == 'block')
				$('.navbar-toggle').click();
		});

		$('input[name="sfztlw"]').change(function (e) {
			$('#lw_area').toggle();
		});

		$('input[name="sfsqhyfy"]').change(function (e) {
			$('#fy_area').toggle();
		});

		$('input[name="sffblw"]').change(function (e) {
			$('#lw_area').toggle();
		});

		$('input[name="zsyq"]').change(function (e) {
			if ($('input[name="zsyq"]:checked').val() == '不住宿')
				$('#zssj_area').hide();
			else
				$('#zssj_area').show();
		});
		$('#zskssj,#zsjssj').datetimepicker({
			minView: "month", //选择日期后，不会再跳转去选择时分秒
			format: 'yyyy-mm-dd',
			language: 'zh-CN',
			autoclose: true,//选择日期后自动关闭
			width: '100%'
		});
		$('#zskssj,#zsjssj').val(new Date().format('yyyy-MM-dd'));
		$('#zskssj,#zsjssj').inputmask("2099-99-99");
//		$("#telphone").inputmask('199 9999 9999');
		$("#postcode").inputmask('999999');
	});

	function isEmail(strEmail) {
		if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
			return true;
		else{
			return false;
		}
	}
</script>
</body>
</html>