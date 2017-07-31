$(function(){
//	document.getElementById("phv2_login_wrap").style.display="none";
//	var login_btn = $('login_btn');
//	login_btn.onclick = function(){
//		var ajax = getajaxHttp();
//		ajax.onreadystatechange=function(){  
//			if(ajax.readyState==4){  
//			    //HTTP响应已经完全接收才调用  
//			   functionName(ajax,obj);  
//			}  
//	    };  
//	    ajax.open('post','user_Login',true);  
//	    ajax.send(parameter);  
//	}
})

function showWin(obj) {
	$(obj).style.display="block";
}

function hideWin(obj) {
	$(obj).style.display="none";
}
function check(){
	var loginName = document.getElementById("username_LRcax");
	var loginPwd = document.getElementById("password3_LRcax");
	if(loginName.value == ""){
		alert("用户名不能为空！请重新填入！");
		loginName.focus();	
		return false;
	}else if(loginPwd.value == ""){
		alert("密码不能为空！请重新填入！");
		loginPwd.focus();
		return false;
	}
	return true;
}

function focusOnLogin(){
	var loginPwd = document.getElementById("LoginPwd");
	if( loginPwd != null )
		loginPwd.focus();	
}

function getajaxHttp() {  
    var xmlHttp;  
    try {  
        // Firefox, Opera 8.0+, Safari  
        xmlHttp = new XMLHttpRequest();  
        } catch (e) {  
            // Internet Explorer  
            try {  
                xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");  
            } catch (e) {  
            try {  
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");  
            } catch (e) {  
                alert("您的浏览器不支持AJAX！");  
                return false;  
            }  
        }  
    }  
    return xmlHttp;  
}  