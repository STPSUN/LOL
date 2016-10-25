

var img=document.getElementById('score');
var link=document.getElementById('xianjie');
var imgarr=[];
var hrefarr=[
         	"http://lol.qq.com/act/a20160302txyx/",
         	"http://lol.uuu9.com/lolhd/content03.shtml?ald",
         	"http://lol.qq.com/act/a20160801yjh/",
         	"http://lol.qq.com/webplat/info/news_version3/152/4579/4580/m3106/201606/473633.shtml",
         	"http://lol.qq.com/act/a20160906collect/"	
         ];
for(var i=1;i<=5;i++){
imgarr.push("images/index/bg0"+i+".png");
}
var curr=1;
var imgTime=function(){
img.src=imgarr[curr]
if(curr>=4){
curr=-1;
}
curr++;
setTimeout(imgTime,2000);
}
imgTime();