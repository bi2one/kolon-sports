<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />
<div class="co co-collection_menu_base" id="collection_menu">
<ul style="padding-top: 35px;height: 24px; ">
<li style="height: 100%; width:210px;float: left;"><a id="collection_runway_movie" href="" style="float: left; width: 100%;height: 100%;"></a></li>
<li style="height: 100%; width:120px;float: left;"><a id="collection_interview_movie" href="" style="float: left; width: 100%;height: 100%;"></a></li>
<li style="height: 100%; width:70px;float: left;"><a id="co-backstage" href="<%=resource.getPageUrl(2)%>" style="float: left; width: 100%;height: 100%;"></a></li>
</ul>
</div>

<script>
$(document).ready(function() {
	if( navigator.appName.indexOf("Microsoft") > -1 ){ // IE?
		$("a#collection_runway_movie").fancybox({
			'scrolling'     : 'no',
			'overlayOpacity': 0.1,
			'showCloseButton'   : false,
			'width' : 500,
			'height': 300,
			'autoDimensions': false,
			'autoSize': false,
			'content' : "<%=resource.vedioStarter("ie", "kolon_G_Loop_smpl_comp.mov")%>"
		});
		$("a#collection_interview_movie").fancybox({
			'scrolling'     : 'no',
			'overlayOpacity': 0.1,
			'showCloseButton'   : false,
			'width' : 500,
			'height': 300,
			'autoDimensions': false,
			'autoSize': false,
			'content' : "<%=resource.vedioStarter("ie", "kolon_G_Loop_smpl_comp.mov")%>"
		});
	}
	else{
		$("a#collection_runway_movie").fancybox({
			'scrolling'     : 'no',
	        'overlayOpacity': 0.1,
	        'showCloseButton'   : false,
			'width' : 500,
			'height': 300,
			'autoDimensions': false,
			'autoSize': false,
	        'content' : "<%=resource.vedioStarter("chrome", "kolon_G_Loop_smpl_comp.mov")%>"
		});
		$("a#collection_interview_movie").fancybox({
			'scrolling'     : 'no',
	        'overlayOpacity': 0.1,
	        'showCloseButton'   : false,
			'width' : 500,
			'height': 300,
			'autoDimensions': false,
			'autoSize': false,
	        'content' : "<%=resource.vedioStarter("chrome", "kolon_G_Loop_smpl_comp.mov")%>"
		});
	}
	/* Using custom settings */
});
</script>
<script type="text/javascript" src="<%=resource.getScriptUrl("collection.js")%>"></script>
<script type="text/javascript" src="<%=resource.getScriptUrl("fancybox.js")%>"></script>


