<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
    <head>
	</head>
	<body>
		this is main page.<br />
		<a href="<%=request.getContextPath() + "/page.jsp?page=1"%>">Go to first page.</a>
	</body>
</html>
