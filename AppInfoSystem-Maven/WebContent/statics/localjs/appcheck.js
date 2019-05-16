$("#back").on("click",function(){
	var path=$("#path").val();
	window.location.href = path+"/appInfo/applist.html?count=backend";
});