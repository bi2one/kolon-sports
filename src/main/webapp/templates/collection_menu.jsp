<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request);
%>
<img id="foot_image" src="<%= pageMapper.getImageUrl("collection_footer.png") %>" width="415px" height="52px"/>



<script>
var ie = "<embed src='<%=pageMapper.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' type='application/x-shockwave-flash' width='100%' height='600px' allowscriptaccess='always' allowfullscreen='true'/>";
var el = "<video id='video' src='<%=pageMapper.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' controls style='width: 80%; height: 480px; margin:auto;'> <source src='<%=pageMapper.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>'type='video/mov'></source></video>";

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
<script type="text/javascript" src="<%=pageMapper.getScriptUrl("collection.js")%>"></script>
<script type="text/javascript" src="<%=pageMapper.getScriptUrl("fancybox.js")%>"></script>
