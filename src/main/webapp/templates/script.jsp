<%@page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />

<script type="text/javascript" src="<%=resource.getScriptUrl("html5shiv.js")%>"></script>
<script type="text/javascript" src="<%=resource.getScriptUrl("jquery.js")%>"></script>

<!-- for collection -->
<%if(request.getParameter("page").equals("1")){ %>
<script type="text/javascript" src="<%=resource.getScriptUrl("fancybox.js")%>"></script>
<script type="text/javascript" src="<%=resource.getScriptUrl("collection.js")%>"></script>
<script type="text/javascript" src="<%=resource.getScriptUrl("jquery.fancybox.pack.js")%>"></script>
<%}%>
<script type="text/javascript" src="<%=resource.getScriptUrl("center.nav.over.controller.js")%>"></script>
