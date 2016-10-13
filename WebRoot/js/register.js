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
addListener(myinput,"click",function(){myinput.value = "";})
addListener(myinput,"blur",function(){myinput.value = "ÇëÊäÈëÕıÈ·ÕËºÅ";})