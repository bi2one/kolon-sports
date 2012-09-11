<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />

<link rel="stylesheet" href="<%= resource.getCssUrl("reset.css")%>" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= resource.getCssUrl("kolon.css")%>" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= resource.getCssUrl("collection.css")%>" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= resource.getCssUrl("style_nav_images.css")%>" type="text/css" media="screen" />
<link rel="stylesheet" href="<%= resource.getCssUrl("left_nav_style.css")%>" type="text/css" media="screen" />
<link rel="stylesheet" href="<%=resource.getCssUrl("jquery.fancybox.css")%>" type="text/css" media="screen" />
