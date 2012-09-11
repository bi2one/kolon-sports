<%@page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="info" class="com.mobitle.kolonsports.PageInfoBean"
	scope="session" />
<jsp:useBean id="resource"
	class="com.mobitle.kolonsports.PageResourceBean" scope="session" />
<jsp:setProperty name="info" property="page" />
<%
	info.init(request);
	resource.init(request);

	int pageNum = Integer.parseInt(request.getParameter("page"));
%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="<%=resource.getCssJspUrl()%>" flush="false" />
<jsp:include page="<%=resource.getScriptJspUrl()%>" flush="false" />
</head>
<body>
	<div id="main">
		<jsp:include page="<%=resource.getSidebarJspUrl()%>" flush="false" />
		<div id="contents">
			<section class="book-area"
				style="background: url('<%=resource.getImageUrl(info.getBookImageFileName())%>') no-repeat bottom left;">
				<jsp:include page="<%=info.getContentUrl()%>" flush="false" />
			</section>
			<section class="nav-area">
				<nav class="left-nav-area">
					<ul>
						<%
							if (info.getBigCtgName() == "collection") {
						%>
						<li>
							<a href="<%=resource.getPageUrl(2)%>"
								class="sprite-left-nav-over sprite-left_nav-over_01"
								style="display: block; cursor: pointer;"></a>
						</li>
						<%
							} else {
						%>
						<li>
							<a href="<%=resource.getPageUrl(2)%>"
								class="sprite-left-nav sprite-left_nav_01"
								style="display: block; cursor: pointer;"></a>
						</li>
						<%
							}
						%>
						<%
							if (info.getBigCtgName() == "styleon") {
						%>
						<li>
							<a href="<%=resource.getPageUrl(8)%>"
								class="sprite-left-nav-over sprite-left_nav-over_02"
								style="display: block; cursor: pointer;"></a>
						</li>
						<%
							} else {
						%>
						<li>
							<a href="<%=resource.getPageUrl(8)%>"
								class="sprite-left-nav sprite-left_nav_02"
								style="display: block; cursor: pointer;"></a>
						</li>
						<%
							}
						%>
						<%
							if (info.getBigCtgName() == "issue") {
						%>
						<li>
							<a href="<%=resource.getPageUrl(pageNum)%>"
								class="sprite-left-nav-over sprite-left_nav-over_03"
								style="display: block; cursor: pointer;"></a>
						</li>
						<%
							} else {
						%>
						<li>
							<a href="<%=resource.getPageUrl(pageNum)%>"
								class="sprite-left-nav sprite-left_nav_03"
								style="display: block; cursor: pointer;"></a>
						</li>
						<%
							}
						%>
						<%
							if (info.getBigCtgName() == "event") {
						%>
						<li>
							<a href="<%=resource.getPageUrl(pageNum)%>"
								class="sprite-left-nav-over sprite-left_nav-over_04"
								style="display: block; cursor: pointer;"></a>
						</li>
						<%
							} else {
						%>
						<li>
							<a href="<%=resource.getPageUrl(2)%>"
								class="sprite-left-nav sprite-left_nav_04"
								style="display: block; cursor: pointer;"></a>
						</li>
						<%
							}
						%>
						
					</ul>
				</nav>
				<nav class="right-nav-area">
					<img src="<%=resource.getImageUrl("right_nav.png")%>"
						width="109px" height="47px" />
				</nav>


				<nav class="center-nav-area">
					<jsp:include page="<%=info.getMenuUrl()%>" />
				</nav>
			</section>
		</div>
		<jsp:include page="<%=resource.getFooterJspUrl()%>" flush="false" />
	</div>

</body>
</html>

