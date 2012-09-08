var lastID = null;
var handleMouseover = function(e) {
	var target = e.target || e.srcElement;
	lastID = target.id;
	if (lastID == 'first-button' || lastID == 'second-button'
			|| lastID == 'third-button' || lastID == 'fourth-button'
			|| lastID == 'fifth-button') {
		$('#center-nav div').removeClass();
		$('#center-nav div').addClass("bt bt_" + lastID);
	} else {
		//$('#center-nav div').removeClass();
		//$('#center-nav div').addClass("bt bt_middles");
	}
};
if (document.addEventListener) {
	document.addEventListener('mouseover', handleMouseover, false);
} else {
	document.attachEvent('onmouseover', handleMouseover);
}