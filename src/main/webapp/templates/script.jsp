<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request, response);
%>

<script type="text/javascript" src="<%=pageMapper.getScriptUrl("html5shiv.js")%>"></script>
<script type="text/javascript" src="<%=pageMapper.getScriptUrl("jquery.js")%>"></script>
<script type="text/javascript" src="<%=pageMapper.getScriptUrl("collection.js")%>"></script>
