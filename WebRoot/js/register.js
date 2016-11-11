function getStyle(obj,name){
	if(obj.currentStyle){
		return obj.currentStyle[name];
	}else{
		return getComputedStyle(obj,false)[name];
	}
}

window.onload=function(){
	  
		var oBtn1=document.getElementById("resident");
		var oBtn2=document.getElementById("company");
		var oDiv=document.getElementById("container");
		var oDiv2=document.getElementById("container2");
		oBtn1.onclick=function(){
		oBtn1.className="registercloose";
		oBtn2.className="registercloose2";
		oDiv.className="container";
		oDiv2.className="container2";
		
		};
		oBtn2.onclick=function(){
			oBtn2.className="registercloose";
			oBtn1.className="registercloose2";
			oDiv.className="container2";
			oDiv2.className="container3";
			
			
			
		};
		
	
	
};
