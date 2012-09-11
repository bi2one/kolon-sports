function imageChangeMouseOver() {
	if(location.search){
		var param = location.search.split("&")[0];
		var pageNum = param.split("=")[1];
	}
	
	alert(pageNum);
	
}