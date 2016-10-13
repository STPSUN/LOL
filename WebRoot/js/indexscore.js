

var img=document.getElementById('score');
var imgarr=[];
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