<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request);
%>
<link rel="stylesheet" href="<%=pageMapper.getCSSUrl("jquery.fancybox.css")%>" type="text/css" media="screen" />
<div class="collection_list">
	<ul id="menu-list">
	<li id="first_menu" class=""><a id="single_image" href=""><img id="first-button" src="<%=pageMapper.getImageUrl("menu1-n.png")%>"  alt="" onmouseover="this.src='<%=pageMapper.getImageUrl("menu1-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu1-n.png")%>'"/></a></li>
	<li id="second_menu" class=""><a href=""><img id="second-button"  src="<%=pageMapper.getImageUrl("menu2-n.png")%>" onmouseover="this.src='<%=pageMapper.getImageUrl("menu2-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu2-n.png")%>'"/></a></li>
	<li id="third_menu" class="" ><a href=""><img id="third-button"  src="<%=pageMapper.getImageUrl("menu3-n.png")%>"onmouseover="this.src='<%=pageMapper.getImageUrl("menu3-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu3-n.png")%>'"/></a></li>
	<li id="fourth_menu" class=""><a href="<%=pageMapper.getLink(2)%>" ><img id="fourth-button"  src="<%=pageMapper.getImageUrl("menu4-n.png")%>"onmouseover="this.src='<%=pageMapper.getImageUrl("menu4-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu4-n.png")%>'"/></a></li>
	<li id="fifth_menu" class="" style="float: left; margin-top: -60;"><a href=<%=pageMapper.getLink(2) %>><img id="fifth-button"  src="<%=pageMapper.getImageUrl("menu5-n.png")%>"onmouseover="this.src='<%=pageMapper.getImageUrl("menu5-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu5-n.png")%>'"/></a></li>
	</ul>
</div>



