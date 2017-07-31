/**
 * 
 */
$().ready(function() {
	init();
	var flag = true;
	$('#loginName').focus(function(){
		$('#lnExsit').html("").css({'display':'none'})
	});
	$('#loginName').blur(function() {
		var loginName = $('#loginName').val();
		var postData = {"loginName":loginName.trim()}
		if(loginName.trim()!=''){
			$.ajax({
				type : "post",
				url : "checkLoginNameAction",//需要用来处理ajax请求的action,excuteAjax为处理的方法名，JsonAction为action名
				data : postData,//设置数据源
				dataType : "json",//设置需要返回的数据类型
				success : function(data) {
					//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
					if(data.retCode=='0'){
						$('#lnExsit').html(data.retMsg).css({'display':'block'});
						flag = false;
					}else{
						flag = true;
					}
				},
				error : function() {
					alert("系统异常，请稍后重试！");
				}
			});
//			$.getJSON(
//				"checkLoginNameAction",
//				postData,
//				function(data){
//					
////					var json=jQuery.parseJSON(data);
//					//或者
//					var json = $.parseJSON(data);
//					console.info(json);
//			});
		}
		
	});
//	$('#regist_btn').bind('click',function(){})  //绑定click事件
	$('#regist_btn').click(function() {
		if(!flag){
			alert("用户名已经存在,请重新填写!");
			return;
		}
		$('#errorMsg').html("");
		var trueName = $('#trueName').val();
		var loginName = $('#loginName').val();
		var loginPwd = $('#loginPwd').val();
		if (checkInput(trueName, loginName, loginPwd)) {
			var postData = {
				'trueName' : trueName,
				'loginName' : loginName,
				'loginPwd' : loginPwd
			};
			$.ajax({
				type:'post',
				url:'registerAction',
				data:postData,
				dataType:'json',
				success:function(data){
					if(data.retCode=='1'){
						alert("恭喜您,用户注册成功!");
						window.location.href="sign_in.html";
					}else{
						alert("对不起,用户注册失败!");
						window.location.href="sign_up.html";
					}
				},
				error:function() {
					alert("系统异常，请稍后重试！");
				}
			});
		}
	});
})

function init() {
	$('.login_form .title .regist_btn .normal-title a').hover(function() {
		if ($(this).hasClass('active')) {
			return false;
		} else {
			$(this).css("border-bottom", "3px solid #EA6F5A");
		}
	}, function() {
		if ($(this).hasClass('active')) {
			return false;
		} else {
			$(this).css("border-bottom", "none");
		}
	}).click(
			function() {
				if ($(this).hasClass('active')) {
					return false;
				} else {
					$(this).siblings('a').removeClass('active').css(
							"border-bottom", "none");
					$(this).addClass('active');
				}
			});
}

//前端验证输入项
function checkInput(trueName, loginName, loginPwd) {
	var ret = true;
	if (null == trueName || trueName == '') {
		$('#errorMsg').css("display", "block").html("真实姓名不能为空，请确认后提交。");
		ret = false;
	}
	if (null == loginName || loginName == '') {
		$('#errorMsg').css("display", "block").html("用户名不能为空，请确认后提交。");
		ret = false;
	} else {
		loginName = loginName.replace(/(^\s*)|(\s*$)/g, "");
		var email = new RegExp(
				/^[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]*)*@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/);
		var tel = new RegExp(/^[1][3,4,5,7,8][0-9]{9}$/);
		if (!(email.test(loginName || tel.test(loginName)))) {
			$('#errorMsg').css("display", "block").html("用户名必须是手机号或邮箱，请确认后提交。");
			ret = false;
		}
	}
	if (null == loginPwd || loginPwd == '') {
		$('#errorMsg').css("display", "block").html("密码不能为空，请重新填写。");
		ret = false;
	} else {
		var pwd = new RegExp(/^[0-9A-Za-z]{6,}$/);
		if (!pwd.test(loginPwd)) {
			$('#errorMsg').css("display", "block").html(
					"密码必须为数字和字符组成且不小于6位，请重新填写。");
			ret = false;
		}
	}
	return ret;
}