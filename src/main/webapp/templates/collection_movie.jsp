<%@page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />

<div class="video1" id="video1"></div>
<script>
var ie = "<embed src='<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' type='application/x-shockwave-flash' width='100%' height='600px' allowscriptaccess='always' allowfullscreen='true'/>";
var el = "<video id='video' src='<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' controls style='width: 80%; height: 480px; margin-left: 10%; margin-top: 30px; background: black;'> <source src='<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>'type='video/mov'></source></video>";
if( navigator.appName.indexOf("Microsoft") > -1 ) // IE?
		$("#video1").html(ie);
else
	$("#video1").html(el);
</script>
