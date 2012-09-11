<%@page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />

<aside id="empty-sidebar">
	<a id="view-pages-link" href="#"><img width="87px" height="11px" src="<%=resource.getImageUrl("view_pages.png")%>" /></a>
</aside>

<aside id="sidebar-area">
	<h2 id="logo" alt="logo"><img width="102px" height="48px" src="<%=resource.getImageUrl("logo.png")%>" alt="logo"/></h2>
	<a id="view-pages-close-link" href="#"><img width="87px" height="11px" src="<%=resource.getImageUrl("view_pages.png")%>" /></a>
	<nav>
		<ul>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=resource.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=resource.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=resource.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=resource.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122 bottom-margin16">
				<img width="122px" height="80px" src="<%=resource.getImageUrl("thumbnail.png")%>"/>
			</li>
			<li class="height122">
				<img width="122px" height="80px" src="<%=resource.getImageUrl("thumbnail.png")%>"/>
			</li>
		</ul>
	</nav>
	<a id="page-next-link" href="#"><img width="122px" height="22px" src="<%=resource.getImageUrl("arrow.png")%>" /></a>
	<a id="all-pages-link" href="#"><img width="108px" height="11px" src="<%=resource.getImageUrl("view_all_pages.png")%>" /></a>
</aside>

<script type="text/javascript">
</script>
