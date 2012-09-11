/*
var lastID = null;
var handleMouseover = function(e) {
	var target = e.target || e.srcElement;
	lastID = target.id;
	if (lastID == 'first-button' || lastID == 'second-button'
			|| lastID == 'third-button' || lastID == 'fourth-button'
			|| lastID == 'fifth-button') {
			$('#collection_menu').removeClass();
			$('#collection_menu').addClass("co co-" + lastID);
	}
	else if(lastID=='co-runway'||lastID=='co-interview'||lastID=='co-backstage'){
		$('#collection_menu').removeClass();
		$('#collection_menu').addClass("co co-" + lastID);
	}
	else {
		$('#collection_menu').removeClass();
		$('#collection_menu').addClass("co co-collection_menu_base");
	}
};
if (document.addEventListener) {
	document.addEventListener('mouseover', handleMouseover, false);
} else {
	document.attachEvent('onmouseover', handleMouseover);
}*/