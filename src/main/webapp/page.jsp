<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request);
%>
<!DOCTYPE html>
<html>
    <head>
		<jsp:include page="<%= pageMapper.getTemplate("css.jsp") %>" flush="false" />
		<jsp:include page="<%= pageMapper.getTemplate("script.jsp") %>" flush="false" />
	</head>
    <body>
		<div id="main">
			<jsp:include page="<%= pageMapper.getTemplate("sidebar.jsp") %>" flush="false" />
			<div id="contents">
				<section class="book-area" style="background: url('<%=pageMapper.getImageUrl("book.png")%>') no-repeat bottom left;">
					<jsp:include page="<%= pageMapper.getUrl(request.getParameter("page")) %>" flush="false" />
				</section>
				<section class="nav-area">
					<nav class="left-nav-area">
						<img  src="<%= pageMapper.getImageUrl("left_nav.png") %>" width="75px" height="47px" >
						<ul style="width:100%;height: 100%;float: left;" >
						<li style="height: 25%;width: 100%;"><a href="#" style="float:left; height: 100%;width:100%;"></a></li>
						<li style="height: 25%;width: 100%;"><a href="#" style="float:left; height: 100%;width:100%;"></a></li>
						<li style="height: 25%;width: 100%;"><a href="#" style="float:left; height: 100%;width:100%;"></a></li>
						<li style="height: 25%;width: 100%;"><a href="#" style="float:left; height: 100%;width:100%;"></a></li>
						</ul>				
					</nav>
					<nav class="right-nav-area">
						<img src="<%= pageMapper.getImageUrl("right_nav.png") %>" width="109px" height="47px" style="float: left;"/>
						<ul style="width:100%;height: 100%;">
						<li style="height: 25%;width: 100%;"><a href="#" style="float:left; height: 100%;width:100%;"></a></li>
						<li style="height: 25%;width: 100%;"><a href="#" style="float:left; height: 100%;width:100%;"></a></li>
						<li style="height: 25%;width: 100%;"><a href="#" style="float:left; height: 100%;width:100%;"></a></li>
						<li style="height: 25%;width: 100%;"><a href="#" style="float:left; height: 100%;width:100%;"></a></li>
						</ul>				
					</nav>
					<nav class="center-nav-area">
						<jsp:include page="<%=pageMapper.getBottomMenuUrl(request.getParameter("page"))%>" />
					</nav>
			</div>
			<jsp:include page="<%= pageMapper.getTemplate("footer.jsp") %>" flush="false" />
		</div>
	</body>
</html>
