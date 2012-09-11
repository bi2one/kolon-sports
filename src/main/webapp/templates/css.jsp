<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request, response);
%>
<link rel="stylesheet" href="<%= pageMapper.getCSSUrl("reset.css")%>" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= pageMapper.getCSSUrl("kolon.css")%>" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= pageMapper.getCSSUrl("collection.css")%>" type="text/css" media="screen" />
