<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request);
%>

<footer>
	<div class="clear"></div>
	<div id="copyright">
		<img src="<%=pageMapper.getImageUrl("credit.png")%>" width="526px" height="9px" />
	</div>
</footer>
