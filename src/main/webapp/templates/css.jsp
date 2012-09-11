<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request, response);
%>
<link rel="stylesheet" href="<%= pageMapper.getCSSUrl("reset.css")%>" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= pageMapper.getCSSUrl("kolon.css")%>" type="text/css" media="screen" />
<<<<<<< HEAD
<link rel="stylesheet" href="<%= pageMapper.getCSSUrl("collection.css")%>" type="text/css" media="screen" />
=======
<link rel="stylesheet" href="<%= pageMapper.getCSSUrl("collection.css")%>" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= pageMapper.getCSSUrl("style_nav_images.css")%>" type="text/css" media="screen" />

<!-- TODO: for collection -->
<link rel="stylesheet" href="<%=pageMapper.getCSSUrl("jquery.fancybox.css")%>" type="text/css" media="screen" />
>>>>>>> ad4be0e8817e4679767b3a57abf7c0639bf80e5e
