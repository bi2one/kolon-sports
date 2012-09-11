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
<jsp:include page="<%= resource.getCssJspUrl() %>" flush="false" />
<jsp:include page="<%= resource.getScriptJspUrl() %>" flush="false" />
</head>
<body>
	<div id="main">
		<jsp:include page="<%= resource.getSidebarJspUrl() %>" flush="false" />
		<div id="contents">
			<section class="book-area"
				style="background: url('<%=resource.getImageUrl("book.png")%>') no-repeat bottom left;">
				<jsp:include page="<%= info.getContentUrl() %>" flush="false" />
			</section>
			<section class="nav-area">
				<nav class="left-nav-area">
					<ul>
						<li>
							<a href="<%=resource.getPageUrl(2)%>" class="sprite-left-nav sprite-left_nav_01" style="display: block; cursor: pointer;"></a>
						</li>
<%
	if (info.getPage() == 2){					
%>						<li>		
							<a href="<%=resource.getPageUrl(2)%>" class="sprite-left-nav-over sprite-left_nav-over_01" style="display: block; cursor: pointer;"></a>
						</li>
<%
	}
%>														
						</li>
						<li>
							<a href="<%=resource.getPageUrl(2)%>" class="sprite-left-nav sprite-left_nav_02" style="display: block; cursor: pointer;">
								
							</a>
						</li>
						<li>
							<a href="<%=resource.getPageUrl(2)%>" class="sprite-left-nav sprite-left_nav_03" style="display: block; cursor: pointer;">
								
							</a>
						</li>
						<li>
							<a href="<%=resource.getPageUrl(2)%>" class="sprite-left-nav sprite-left_nav_04" style="display: block; cursor: pointer;">
								
							</a>
						</li>
					</ul>
				</nav>
				
				<nav class="right-nav-area">
					<img src="<%= resource.getImageUrl("right_nav.png") %>"
						width="109px" height="47px" />
				</nav>
				<nav class="center-nav-area">
					<jsp:include page="<%=info.getMenuUrl()%>" />
				</nav>
			</section>
			<%if(request.getParameter("page").equals("5")){%>
			<div id="number">
				<div id="number-list" class="num num-numbase"
					style="margin: auto; margin-top: 5px;">
					<ul id="backstage-number">
						<li><a id="num1" href="#1"></a></li>
						<li><a id="num2" href="#2"></a></li>
						<li><a id="num3" href="#3"></a></li>
						<li><a id="num4" href="#4"></a></li>
						<li><a id="num5" href="#5"></a></li>
						<li><a id="num6" href="#6"></a></li>
					</ul>
				</div>
			</div>
			<%}%>
		</div>
		<jsp:include page="<%= resource.getFooterJspUrl() %>" flush="false" />
	</div>
</body>
</html>
