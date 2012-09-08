<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request);
%>
<div class="video1">
	<video id="video" controls="controls" src="<%=pageMapper.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>">
		<source src="<%=pageMapper.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>" type="video/mov"></source>
		Your browser does not support the video tag.
		<embed src="<%=pageMapper.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>"
			type="application/x-shockwave-flash" width="100%" height="100%"
			allowscriptaccess="always" allowfullscreen="true" ></embed>
		<!--  
								<object type="application/x-shockwave-flash"
									data="http://releases.flowplayer.org/swf/flowplayer-3.2.1.swf"
									width="640" height="360">
									<param name="movie"
										value="http://releases.flowplayer.org/swf/flowplayer-3.2.1.swf" />
									<param name="allowFullScreen" value="true" />
									<param name="wmode" value="transparent" />
									<param name="flashVars" value="src=./movie/hit.mp4"/>
									</object>
									-->
	</video>
</div>