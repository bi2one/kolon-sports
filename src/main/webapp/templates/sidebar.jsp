<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request, response);
%>
<aside id="sidebar-area">
	<h2 id="logo" alt="logo"><img width="102px" height="48px" src="<%=pageMapper.getImageUrl("logo.png")%>" alt="logo"/></h2>
	<a id="view-pages-link" href="#"><img width="87px" height="11px" src="<%=pageMapper.getImageUrl("view_pages.png")%>" /></a>
	<nav>
		<ul>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=pageMapper.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=pageMapper.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=pageMapper.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=pageMapper.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=pageMapper.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122">
				<img width="122px" height="80px" src="<%=pageMapper.getImageUrl("thumbnail.png")%>"/>
			</li>
		</ul>
	</nav>
	<a id="page-next-link" href="#"><img width="122px" height="22px" src="<%=pageMapper.getImageUrl("arrow.png")%>" /></a>
	<a id="all-pages-link" href="#"><img width="108px" height="11px" src="<%=pageMapper.getImageUrl("view_all_pages.png")%>" /></a>
</aside>
