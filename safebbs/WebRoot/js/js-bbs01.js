/*login.jsp 登录验证*/
function logincheck() {
	var uname = document.getElementById("loginname");
	var upwd = document.getElementById("signpwd");
	
	console.log(uname.value," ",upwd.value);
	if(uname.value == "" || uname.value == null)  {
		var cul = document.getElementById("meserrorul");
		cul.innerHTML = "<li>账号不能为空</li>";
		/*var cli = document.createElement("li");
		var text0 = document.createTextNode("");
		
		document.getElementById("meserrorul").appendChild(cli);
		cli.appendChild(text0);*/
		document.getElementById("meserror").style.display = "";
		return false;
	}else if(upwd.value == "" || upwd.value == null) {
		var cul = document.getElementById("meserrorul");
		cul.innerHTML = "<li>密码不能为空</li>";
		/*var cli = document.createElement("li");
		var text1 = document.createTextNode("密码不能为空");
		
		docment.getElementById("meserrorul").appendChild(cli);
		cli.appendChild(text1);*/
		document.getElementById("meserror").style.display = "";
		return false;
	}else if(uname.value != "123" || upwd != "123") {
		var cul = document.getElementById("meserrorul");
		cul.innerHTML = "<li>账号/密码错误</li>";
		/*var cli = document.createElement("li");
		var text2 = document.createTextNode("账号/密码错误");
		
		cli.appendChild(text2);*/
		document.getElementById("meserror").style.display = "";
		return false;
	}
};
/*register.jsp 邮箱、电话号码正则判断*/
var regidinp = document.getElementById("regidinp");
regidinp.onpropertychange = regidinp.oninput = regidinp.onchange = function () {
	var patt0 = /^\w+@\w+(\.\w+)+$/;	//邮箱正则判断
	var patt1 = /^1[3|4|5|7|8]\d{9}$/;	//手机号正则判断
	var patt2 = /^[0-9]*$/;				//包含非数字符号
	var regidinp1 = document.getElementById("regidinp");
	var span0 = document.getElementById("span0");
	var regmail = document.getElementById("regmail");
	var regphone = document.getElementById("regphone");
	var reghidden = document.getElementsByClassName("reghidden");
	var regbox = document.getElementById("reg_box");
	
	if(!patt2.test(regidinp1.value)) {
		if(!patt0.test(regidinp1.value)) {
			span0.innerHTML = "<span>请输入正确的邮箱格式</span>";
			regbox.style.height = "300px";
			regmail.style.display = "none";
			for(var i=0 ; i<reghidden.length ; i++) {
				reghidden[i].style.display = "none";
			}
			if(regidinp1.value.length == 0) {
				span0.innerHTML = "<span>请您输入QQ、163、126、gmail等常用邮箱，或者11位手机号。</span>";
			}
		}else {
			span0.innerHTML = "<span>邮箱可以使用</span>";
			regbox.style.height = "600px";
			regmail.style.display = "block";
			for(var i=0 ; i<reghidden.length ; i++) {
				reghidden[i].style.display = "block";
			}
		}
	} else {
		if(!patt1.test(regidinp1.value)) {
			span0.innerHTML = "<span>请输入正确的11位手机号码</span>";
			regbox.style.height = "300px";
			regphone.style.display = "none";
			for(var i=0 ; i<reghidden.length ; i++) {
				reghidden[i].style.display = "none";
			}
			if(regidinp1.value.length == 0) {
				span0.innerHTML = "<span>请您输入QQ、163、126、gmail等常用邮箱，或者11位手机号。</span>";
			}
		} else {
			span0.innerHTML = "<span>当前手机号码可以使用</span>";
			regbox.style.height = "600px";
			regphone.style.display = "block";
			for(var i=0 ; i<reghidden.length ; i++) {
				reghidden[i].style.display = "block";
			}
		}
	}
};
/*
*home.jsp select选择
*/
function changesel() {
	var sel = document.getElementById("pubbs_sel");
	
	if(sel.value == "-1") {
		alert("请选择一个主题");
		return false;
	}
}
/*home.jsp pubbs div隐藏显示*/
function hideWindow() {
	var pubdiv = document.getElementById("pubbs");
	pubdiv.style.display = "none";
}
function showWindow() {
	document.getElementById("pubbs").style.display = "block";
}
/*home.jsp signa 签到检查*/
function checksign() {
	var sign = document.getElementById("homeico_sign");	//二次寻此id已被修改，找不到而控制塔报错
	var str = sign.id;
	var signp =document.getElementById("signp");
	
	if(str.indexOf("homeico_sign") >= 0) {		
		sign.id = "homeico_signcha";
		signp.innerHTML = "<p>已签到</p>";
	}else {
		return;
	}
}