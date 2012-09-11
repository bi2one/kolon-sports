<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />


<footer>
	<div class="clear"></div>
	<div id="copyright">
		<img src="<%=resource.getImageUrl("credit.png")%>" width="526px" height="9px" />
	</div>
</footer>
