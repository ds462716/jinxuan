<%@ page language="java" pageEncoding="UTF-8" %>

<div class="topbox">
	<div class="lang">
		<c:if test="${not empty register}">
			<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle" 
						data-toggle="dropdown">欢迎您，${register.nickname} <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a class="btn-showinfo" href="javascript:;">个人信息</a></li>
					<li><a href="<%=path%>/auth.do?method=resetPwd&regid=${register.id}">修改密码</a></li>
					<li class="divider"></li>
					<li><a class="btn-logout" href="javascript:;">安全退出</a></li>
				</ul>
			</div>
		</c:if>
		<c:if test="${empty register}">
			<button class="btn btn-default btn-login">登录</button>
			<button class="btn btn-default btn-register">注册</button>
		</c:if>
		<%--<button class="btn btn-danger btn-enindex">EN</button>--%>
	</div>
	<div class="imbox">
		<%--<img src="<%=path%>/static/spkx/images/top_txt.png">--%>
		<div class="imbox_wz"><h1>首届“数据分析与知识发现”学术研讨会</h1>
			<p>2017年6月8~9日　中国　北京
			<p></div>
		<%--<div class="imbox_wzpc"><h2>首届“数据分析与知识发现”学术研讨会</h2><p>2017年6月8~9日　中国　北京<p></div>--%>
	</div>
	<div class="bm">
		<a href="info.jsp"><img src="<%=path%>/static/spkx/images/top_bm.png"></a>
	</div>

</div>
<div class="navbox">
	<div class="nav-spkx">
		<ul>
			<li><a href="index.jsp">会议简介</a></li>
			<%--<li><a href="http://www.chnfood.cn/conf/2017spkx/zzjg.html">组织机构</a></li>--%>
			<%--<li><a href="hyjj.jsp">会议简介</a></li>--%>
			<li><a href="zjjrc.jsp">专家及日程</a></li>
			<%--<li><a href="http://www.chnfood.cn/conf/2017spkx/hynr.html">会议内容</a></li>--%>
			<li><a href="hyzw.jsp">会议征文</a></li>
			<li><a href="fyjhk.jsp">费用及汇款</a></li>
			<%--<li><a href="http://www.chnfood.cn/conf/2017spkx/hwz.html">会务组</a></li>--%>
			<li><a href="bmfs.jsp">报名方式</a></li>
			<li><a href="hwz.jsp">会务组</a></li>
			<li><a href="download.jsp">资料下载</a></li>
			<div class="clear"></div>
		</ul>
		<%--<ul>
			  <li><a href="http://www.chnfood.cn/conf/2017spkx/index.html">会议首页</a></li>
			<li><a href="http://www.chnfood.cn/conf/2017spkx/zzjg.html">组织机构</a></li>
			<li><a href="http://www.chnfood.cn/conf/2017spkx/hyjj.html">会议简介</a></li>
			<li><a href="http://www.chnfood.cn/conf/2017spkx/zwh.html">组委会</a></li>
			<li><a href="http://www.chnfood.cn/conf/2017spkx/hynr.html">会议内容</a></li>
			<li><a href="http://www.chnfood.cn/conf/2017spkx/hylw.html">会议论文</a></li>
			<li><a href="http://www.chnfood.cn/conf/2017spkx/fyhk.html">费用及汇款</a></li>
			<li><a href="http://www.chnfood.cn/conf/2017spkx/hwz.html">会务组</a></li>
			<li><a href="http://www.chnfood.cn/conf/2017spkx/bmfs.html">报名方式</a></li>
		  <div class="clear"></div>--%>
		</ul>
	</div>
</div>
<div class="navbox-wap">
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#topWrap">
					e-Sciences+<span class="title"> 会议平台</span>
				</a>
			</div>
			<div class="collapse navbar-collapse appiNav">
				<ul class="nav navbar-nav">
					<li style="text-align: center">
						<c:if test="${not empty register}">
							<button class="btn btn-default btn-showinfo">欢迎您，${register.nickname}</button>
							<button class="btn btn-default btn-logout">安全退出</button>
						</c:if>
						<c:if test="${empty register}">
							<button class="btn btn-success btn-login">登录</button>
							<button class="btn btn-warning btn-register">注册</button>
						</c:if>
						<%--<button class="btn btn-danger btn-enindex">EN</button>--%>
					</li>
					<li><a href="index.jsp">会议简介</a></li>
					<%--<li><a href="http://www.chnfood.cn/conf/2017spkx/zzjg.html">组织机构</a></li>--%>
					<%--<li><a href="index.jsp">会议简介</a></li>--%>
					<li><a href="zjjrc.jsp">专家及日程</a></li>
					<%--<li><a href="http://www.chnfood.cn/conf/2017spkx/hynr.html">会议内容</a></li>--%>
					<li><a href="hyzw.jsp">会议征文</a></li>
					<li><a href="fyjhk.jsp">费用及汇款</a></li>
					<%--<li><a href="http://www.chnfood.cn/conf/2017spkx/hwz.html">会务组</a></li>--%>
					<li><a href="bmfs.jsp">报名方式</a></li>
					<li><a href="hwz.jsp">会务组</a></li>
					<li><a href="download.jsp">资料下载</a></li>
					<c:if test="${not empty register}"><li><a href="<%=path%>/auth.do?method=resetPwd&regid=${register.id}">修改密码</a></li></c:if>
					<div class="clear"></div>
				</ul>
			</div>
		</div>
	</div>
</div>
