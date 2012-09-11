function imageChangeMouseOver() {
	if(location.search){
		var param = location.search.split("&")[0];
		var pageNum = param.split("=")[1];
	}
	
	alert(pageNum);
	
}

function imageChangeMouseOver(pageNum) {
	this.removeClass('sprite-lookbook-num_' + pageNum);
	this.addClass('sprite-lookbook-num-over_' + pageNum);
}

function imageChangeMouseOut(pageNum) {
	this.removeClass('sprite-lookbook-num-over_' + pageNum);
	this.addClass('sprite-lookbook-num_' + pageNum);
}