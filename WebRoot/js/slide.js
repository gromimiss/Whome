// JavaScript Document
window.onload=function(){
 var oDiv1=document.getElementById("servicecompany");
 var oUl=oDiv1.getElementsByTagName("ul")[0];
 var aLi=oUl.getElementsByTagName("li");
 oUl.innerHTML=oUl.innerHTML+oUl.innerHTML;
oUl.style.width=(aLi[0].offsetWidth*aLi.length+101)+"px";
 function move(){
	 if(oUl.offsetLeft<-oUl.offsetWidth/2){
	 oUl.style.left="0";
	 }else{
	 oUl.style.left=oUl.offsetLeft-2+"px";}
 }
 var timer=setInterval(move,30);
 oDiv1.onmouseover=function(){
 clearInterval(timer);}
oDiv1.onmouseout=function(){
timer=setInterval(move,30);
}
 
};