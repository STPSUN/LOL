var skilltupian=document.getElementsByClassName('skilltupian');
var shuoming=document.getElementsByClassName('shuoming');
for (var i=0;i<skilltupian.length;i++){
skilltupian[i].onclick=function(){
var activrtbtn=document.getElementsByClassName('shuoming active')[0]

activrtbtn.className="shuoming";
shuoming[this.getAttribute("tab")].className='shuoming active';

var ac=document.getElementsByClassName('skilltupian num')[0]
ac.className="skilltupian";
skilltupian[this.getAttribute("tab")].className='skilltupian num';
}
}

var img=document.getElementById('score');
var imgarr=[];
for(var i=1;i<=4;i++){
imgarr.push("images/hero/hero03-"+i+".jpg");
}
var curr=1;
var imgTime=function(){
img.src=imgarr[curr]
if(curr>=3){
curr=-1;
}
curr++;
setTimeout(imgTime,2000);
}
imgTime();