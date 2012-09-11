<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />
<div class="co co-collection_menu_base" style="margin: auto;">
<ul>
<li></li>
<li></li>
<li></li>
</ul>
</div>

<script>
var ie = "<embed src='<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' type='application/x-shockwave-flash' width='100%' height='600px' allowscriptaccess='always' allowfullscreen='true' autoplay/>";
var el = "<video id='video' src='<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' controls style='width: 80%; height: 480px; margin:auto;'> <source src='<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>'type='video/mov' autoplay></source></video>";

$(document).ready(function() {
	if( navigator.appName.indexOf("Microsoft") > -1 ){ // IE?
		$("a#single_image").fancybox({
			'scrolling'     : 'no',
			'overlayOpacity': 0.1,
			'showCloseButton'   : false,
			'width' : 500,
			'height': 300,
			'autoDimensions': false,
			'autoSize': false,
			'content' : ie
		});
	}
	else{
		$("a#single_image").fancybox({
			'scrolling'     : 'no',
	        'overlayOpacity': 0.1,
	        'showCloseButton'   : false,
			'width' : 500,
			'height': 300,
			'autoDimensions': false,
			'autoSize': false,
	        'content' : el
		});
	}
	
	/* Using custom settings */
});
</script>
<script type="text/javascript" src="<%=resource.getScriptUrl("collection.js")%>"></script>
<script type="text/javascript" src="<%=resource.getScriptUrl("fancybox.js")%>"></script>


