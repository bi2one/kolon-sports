<%@page contentType="text/html; charset=utf-8"%>
<%@page import="com.mobitle.kolonsports.PageMapper"%>
<%
	PageMapper pageMapper = PageMapper.getInstance(request);
%>
<div class="video1" id="video1"></div>

<script>
var ie = "<embed src='<%=pageMapper.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' type='application/x-shockwave-flash' width='100%' height='600px' allowscriptaccess='always' allowfullscreen='true'/>";
var el = "<video id='video' src='<%=pageMapper.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' controls style='width: 80%; height: 480px; margin-left: 10%; margin-top: 30px; background: black;'> <source src='<%=pageMapper.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>'type='video/mov'></source></video>";
if( navigator.appName.indexOf("Microsoft") > -1 ) // IE?
		$("#video1").html(ie);
else
	$("#video1").html(el);
</script>
