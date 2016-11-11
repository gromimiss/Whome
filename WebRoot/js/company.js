function getStyle(obj,name){
	if(obj.currentStyle){
		return obj.currentStyle[name];
	}else{
		return getComputedStyle(obj,false)[name];
	}
}

window.onload=function(){
	  
		var oBtn1=document.getElementById("introduce");
		var oBtn2=document.getElementById("comment");
		var oDiv=document.getElementById("introduce_content");
		var oDiv2=document.getElementById("comment_content");
		oBtn1.onclick=function(){
		oBtn1.className="registercloose";
		oBtn2.className="registercloose2";
		oDiv.className="introduce_content";
		oDiv2.className="comment_content";
		
		};
		oBtn2.onclick=function(){
			oBtn2.className="registercloose";
			oBtn1.className="registercloose2";
			oDiv.className="comment_content";
			oDiv2.className="container2";
			
			
			
		};
		
	
	
};