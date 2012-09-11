var lastID = null;
var handleMouseover = function(e) {
	var target = e.target || e.srcElement;
	lastID = target.id;
	if (lastID == 'first-button' || lastID == 'second-button'
			|| lastID == 'third-button' || lastID == 'fourth-button'
			|| lastID == 'fifth-button') {
		$('#center-nav div').removeClass();
		$('#center-nav div').addClass("bt bt_" + lastID);
		if(lastID=='first-button')
			$("img#foot_image").attr({src:"/kolon/media/images/collection_footer_runway.png"});
		else if(lastID=='third-button')
			$("img#foot_image").attr({src:"/kolon/media/images/collection_footer_interview.png"});
		else if(lastID=='fourth-button')
			$("img#foot_image").attr({src:"/kolon/media/images/collection_footer_backstage.png"});
		
	} else {
		$("img#foot_image").attr({src:"/kolon/media/images/collection_footer.png"});
	}
};
if (document.addEventListener) {
	document.addEventListener('mouseover', handleMouseover, false);
} else {
	document.attachEvent('onmouseover', handleMouseover);
}