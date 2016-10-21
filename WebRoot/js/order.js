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


