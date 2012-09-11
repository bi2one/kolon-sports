<%@page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />
<div class="collection_list">
	<ul id="menu-list">
	<li id="first_menu" class=""><a id="collection_runway_movie"  href=""><img id="first-button" src="<%=resource.getImageUrl("collection_runway.png")%>"  alt="" onmouseover="this.src='<%=resource.getImageUrl("collection_runway_r.png")%>'" onmouseout="this.src='<%=resource.getImageUrl("collection_runway.png")%>'"/></a></li>
	<li id="second_menu" class=""><a id="collection_interview_movie" href=""><img style="margin-top:-60px;" id="second-button"  src="<%=resource.getImageUrl("collection_interview.png")%>" onmouseover="this.src='<%=resource.getImageUrl("collection_interview_r.png")%>'" onmouseout="this.src='<%=resource.getImageUrl("collection_interview.png")%>'"/></a></li>
	<li id="third_menu" class="" ><a href="<%=resource.getPageUrl(2)%>"><img id="third-button"  src="<%=resource.getImageUrl("collection_backstage.png")%>"onmouseover="this.src='<%=resource.getImageUrl("collection_backstage_r.png")%>'" onmouseout="this.src='<%=resource.getImageUrl("collection_backstage.png")%>'"/></a></li>
	</ul>
</div>


