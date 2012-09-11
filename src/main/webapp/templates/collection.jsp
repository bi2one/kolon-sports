<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<jsp:useBean id="info" class="com.mobitle.kolonsports.PageInfoBean" scope="session" />
<%
	PageMapper pageMapper = PageMapper.getInstance(request, response);
%>
<div class="sprite sprite-book_contents">
	<ul id="menu-list">
	<li id="first_menu" class=""><a href="#1"><img id="first-button" src="<%=pageMapper.getImageUrl("menu1-n.png")%>" onmouseover="this.src='<%=pageMapper.getImageUrl("menu1-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu1-n.png")%>'"/></a></li>
	<li id="second_menu" class=""><a href="#2"><img id="second-button"  src="<%=pageMapper.getImageUrl("menu2-n.png")%>" onmouseover="this.src='<%=pageMapper.getImageUrl("menu2-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu2-n.png")%>'"/></a></li>
	<li id="third_menu" class=""><a href="#3"><img id="third-button"  src="<%=pageMapper.getImageUrl("menu3-n.png")%>"onmouseover="this.src='<%=pageMapper.getImageUrl("menu3-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu3-n.png")%>'"/></a></li>
	<li id="fourth_menu" class=""  style="float: left;"><a href="#4" ><img id="fourth-button"  src="<%=pageMapper.getImageUrl("menu4-n.png")%>"onmouseover="this.src='<%=pageMapper.getImageUrl("menu4-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu4-n.png")%>'"/></a></li>
	<li id="fifth_menu" class="" style="float: left;"><a href="#5"><img id="fifth-button"  src="<%=pageMapper.getImageUrl("menu5-n.png")%>"onmouseover="this.src='<%=pageMapper.getImageUrl("menu5-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu5-n.png")%>'"/></a></li>
	</ul>
</div>
