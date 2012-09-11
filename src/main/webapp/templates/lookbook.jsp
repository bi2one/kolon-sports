<%@page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />
<%
	String browser = request.getHeader("User-Agent");
%>
<!-- book content -->

	<div class="book-contents" style="width: 850px; height: 575px; background: url('<%=resource.getImageUrl("book-styleon-looks.png")%>') no-repeat top left; z-index:1000; position: absolute; ">
	
		<a style="margin: 34px 0 0 60px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="<%= resource.getPageUrl(15)%>"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		
		<a style="margin-left: 18px; width: 110px; height: 150px; display: inline-block;" href="#"></a>
		
		<a style="margin-left: 44px; width: 110px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		
		<a style="margin-left: 60px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 110px; height: 155px; display: inline-block;" href="#"></a>
		
		<a style="margin-left: 44px; width: 110px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		
		<a style="margin-left: 60px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 110px; height: 175px; display: inline-block;" href="#"></a>
		
		<a style="margin-left: 44px; width: 110px; height: 175px; display: inline-block;" href="#"></a>
		<a style="margin-left: 18px; width: 55px; height: 155px; display: inline-block;" href="#"></a>								
		<a style="margin-left: 14px; width: 50px; height: 155px; display: inline-block;" href="#"></a>
		<a style="margin-left: 25px; width: 55px; height: 155px; display: inline-block;" href="#"></a>
		
	</div>
	
	<%
		if (browser.indexOf("MSIE") != -1){
	%>
		<div id="video">
			<object width="850px" height="575px">
				<param name="movie" value="<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>" />
				<param name="wmode" value="transparent" />
				<param name="allowfullscreen" value="true"/>
				<param name="allowscriptaccess" value="always"/>
				<param name="showControls" value="false"/>
				<param name="loop" value="true" />
				<embed src="<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>" width="850px" height="575px"
					type="application/x-shockwave-flash" 
					allowscriptaccess="always" 
					allowfullscreen="true" 
					showcontrols="false"
					loop="true"
					wmode="transparent" />
			</object>
		</div>
	<%
		} else {
	%>
		<div id="video">
			<video src="<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>" autoplay loop width="850px" height="550px">
				<source src="<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>" type="video/mov"></source>
		
			</video>
		</div>	
	<%
		}
	%>
	
	
		

				
