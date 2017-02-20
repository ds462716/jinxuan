$(function(){
	//跳转注册页面
	$('.btn-register,.btn-showinfo').off('click').on('click',function(e){
		window.location.href = 'register.jsp?position=contactWrap';
	});

	//跳转登录页面
	$('.btn-login').off('click').on('click',function(e){
		// window.location.href = 'loginWithoutPwd.jsp?position=contactWrap';
		window.location.href = 'login.jsp';
	});

	$('.btn-logout').off('click').on('click',function(e){
		if(!RegisterService)
			return;
		RegisterService.logout(function(){
			// window.location.reload();
			window.location.href = 'login.jsp';
			// window.location.href = 'loginWithoutPwd.jsp?position=contactWrap';
		});
	});

	$('.btn-enindex').off('click').on('click',function(e){
		window.location.href = 'en_index.jsp';
	});
});