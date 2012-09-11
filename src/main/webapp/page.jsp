<%@page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="info" class="com.mobitle.kolonsports.PageInfoBean"
	scope="session" />
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />
<jsp:setProperty name="info" property="page" />
<%
	info.init(request);
	resource.init(request);
%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="<%= resource.getCssJspUrl() %>" flush="false" />
		<jsp:include page="<%= resource.getScriptJspUrl() %>" flush="false" />
	</head>
	<body>
		<div id="main">
			<jsp:include page="<%= resource.getSidebarJspUrl() %>" flush="false" />
			<div id="contents">
				<section class="book-area"
						 style="background: url('<%=resource.getImageUrl(info.getBookImageFileName())%>') no-repeat bottom left;">
					<jsp:include page="<%= info.getContentUrl() %>" flush="false" />
				</section>
				<section class="nav-area">
					<nav class="left-nav-area">
						<img src="<%= resource.getImageUrl("left_nav.png") %>" width="75px"
							 height="47px" />
					</nav>
					<nav class="right-nav-area">
						<img src="<%= resource.getImageUrl("right_nav.png") %>"
							 width="109px" height="47px" />
					</nav>


					<nav class="center-nav-area">
						<jsp:include page="<%=info.getMenuUrl()%>" />
					</nav>
				</section>
			</div>
			<jsp:include page="<%= resource.getFooterJspUrl() %>" flush="false" />
		</div>
	</body>
</html>
