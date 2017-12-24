function check(){
	var count=document.getElementById("count").value;
	var pwd=document.getElementById("pwd").value;
	var tel_reg=/^1[3|4|5|7|8]\d{9}$/;
	//var tel_reg=new RegExp("1[3|4|5|7|8]\\d{9}]$");
	if(count.trim()==""){
		alert("帐户不能为空");
		return false;
     }/*else if(count!="root"){
    		 alert("输入帐户不正确");
    		 return false;
     }*/
    /* else if(!tel_reg.test(count)){
		alert("输入手机号码不正确");
		return false;
	    }*/
        else if(pwd.trim()==""){
		alert("密码不能为空");
		return false;
	/*}else if(pwd!="123456"){
		alert("输入密码不正确");
		return false;
	}*/
}
}

$(function(){   
	//注意：当表单中文本框没有写触发事件时，我们用JQUERY加事件时要写在加载里面($funcitn(){})
	$("#count").focus(function(){
		 //$("#lab").css("display","none");
		 $("#lab").css("visibility","hidden");
	});
});
