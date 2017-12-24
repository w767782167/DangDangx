function checkForm(){
 	var flag=true;
	var str=$.trim($("#frm input[type='text']").val());
	var strpwd=$.trim($("#frm .pwd").val());
	var strpwd2=$.trim($("#frm .pwd2").val());
	var tel_reg=/^1[3|4|5|7|8]\d{9}$/;
	if(str==""){
		alert("手机号码不能为空");
		flag=false;
		return flag;
	}/*else if(!tel_reg.test(str)){
		   alert("输入手机号码不正确");
		   flag=false;
		   return flag;
	    }*/
	else if(strpwd==""){
		alert("用户密码不能为空");
		flag=false;
		return flag;
	}else if(strpwd!=strpwd2){
		alert("两次输入密码不一致");
		flag=false;
		return flag;
	}else if(!$("#frm .lab").prop("checked")){
		  alert("亲，你必须遵守当当交易条款才可注册");
		  flag=false;
	      return flag;
	}
	return flag;
}
/*验证码点击刷新*/
/*function changeRandomCode(){
	  //alert(1);
	      document.getElementById("randomCodeImg").src="/DangDamgx/randomCode?"+new Date().getTime();
	  }*/
/*$(function(){
	$("#randomCode").focus(function(){
		 $("#lab").css("visibility","hidden");
	});
});*/
function createAjax(){
	var ajax;
	try {
		ajax=new XMLHttpRequest();
	} catch (e) {
		// TODO: handle exception
		ajax=new ActiveXObject();
	}
	return ajax;
}
function checkUserName(){
	//alert(1111);
	//1.创建Ajax
	//var ajax=new XMLHttpRequest();
	var ajax=createAjax();
	var text = document.getElementById("username1").value;
	
	//alert(text);
	ajax.open("get","/DangDangx/regcheck?username1="+text);
	
	ajax.onreadystatechange=function(){
		if(ajax.readyState==4&&ajax.status==200){
			var text = ajax.responseText;
			document.getElementById("tipId").innerHTML=text;
		}
	};
	ajax.send();
}