function addListener(element,e,fn)
{
	if(element.addEventListener)
	{
		element.addEventListener(e,fn,false);
	} 
	else 
	{
		element.attachEvent("on" + e,fn);
	}
}
var myinput = document.getElementById("myinput");
function FocusItem(obj)
{
	obj.parentNode.parentNode.className = "current";
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	msgBox.innerHTML = "";
	msgBox.className = "";
}
function CheckItem(obj)
{
	obj.parentNode.parentNode.className = "";
	var msgBox = obj.parentNode.getElementsByTagName("span")[0];
	switch(obj.name) {
		case "login account":
			if(obj.value == "") {
				msgBox.innerHTML = "账号不能为空";
				msgBox.className = "error";
				return false;
			}
			break;
			case "loginname":
			if(obj.value == "") {
				msgBox.innerHTML = "姓名不能为空";
				msgBox.className = "error";
				return false;
			}
			break;
		case "psw1":
			if(obj.value == "") {
				msgBox.innerHTML = "密码不能为空";
				msgBox.className = "error";
				return false;
			}
			break;
		case "psw2":
			if(obj.value == "") {
				msgBox.innerHTML = "确认密码不能为空";
				msgBox.className = "error";
				return false;
			} else if(obj.value != document.getElementById("passWord").value) {
				msgBox.innerHTML = "两次输入的密码不相同";
				msgBox.className = "error";
				return false;
			}
			break;
		case "veryCode":
			if(obj.value == "") {
				msgBox.innerHTML = "验证码不能为空";
				msgBox.className = "error";
				return false;
			}
			break;
			case "jutidizhi":
			if(obj.value == "") {
				msgBox.innerHTML = "具体地址不能为空";
				msgBox.className = "error";
				return false;
			}
			break;
	}
	return true;
}
function $(elementId){
  return document.getElementById(elementId).value;
	}
function divId(elementId){
  return document.getElementById(elementId);
	}
function checkMobile(){
	var mobile=$("mobile");
	var mobileId=divId("mobile_prompt");
	var regMobile=/^1\d{10}$/;
	if(regMobile.test(mobile)==false){
		mobileId.innerHTML="手机号码不正确，请重新输入";
		return false;
		}
		mobileId.innerHTML="";
		return true;
	}
	var city=[
 ["北京","天津","上海","重庆"],
 ["南京","苏州","南通","常州"],
 ["福州","福安","龙岩","南平"],
 ["广州","潮阳","潮州","澄海"],
 ["兰州","白银","定西","敦煌"]
 ];
function getCity(){
 var sltProvince=document.getElementById("province");
 var sltCity=document.getElementById("city");
 var provinceCity=city[sltProvince.selectedIndex-1];
 sltCity.length=1;
 for(var i=0;i<provinceCity.length;i++){
 sltCity[i+1]=new Option(provinceCity[i],provinceCity[i]);
 }
}
var code ; //在全局 定义验证码
function createCode(){ 
code = new Array();
var codeLength = 4;//验证码的长度
var checkCode = document.getElementById("checkCode");
checkCode.value = "";

var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

for(var i=0;i<codeLength;i++) {
   var charIndex = Math.floor(Math.random()*32);
   code +=selectChar[charIndex];
}
if(code.length != codeLength){
   createCode();
}
checkCode.value = code;
}

function validate () {
var inputCode = document.getElementById("input1").value.toUpperCase();

if(inputCode.length <=0) {
   alert("请输入验证码！");
   return false;
}
else if(inputCode != code ){
   alert("验证码输入错误！");
   createCode();
   return false;
}
else {
   alert("成功！");
   return true;
}
}
