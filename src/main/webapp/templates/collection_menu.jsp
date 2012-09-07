<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request);
%>
<img src="<%= pageMapper.getImageUrl("collection_footer.png") %>" width="415px" height="52px"/>
