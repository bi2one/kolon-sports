<%@page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />

<div class="center-nav">
	<!-- white space images -->
	<div class="sprite-style sprite-styleon_footer_01" style="margin: 0 0 0 0; float:left;"></div>
	<div class="sprite-style sprite-styleon_footer_03" style="margin: 0 0 0 0; float: right;"></div>
	<!-- ~white space images -->
	<div>
		<div class="sprite-style sprite-styleon_footer_02" style="margin: 0 0 0 0; display: inline-block;"></div>
		<div style="margin: 0 34px 0 26px; width: 355px; height: 16px;">
			<ul>
				<li style="display: inline-block; margin: 0 0 0 -3px;">
					<a class="sprite-style sprite-styleon_footer_04" style="display: block;" href="<%= resource.getPageUrl(13)%>"></a>
				</li>
				<li style="display: inline-block; margin: 0 0 0 -6px;">
					<a class="sprite-style sprite-styleon_footer_05" style=" display: inline-block;" href="<%= resource.getPageUrl(38)%>"></a>
				</li>
				<li style="display: inline-block; margin: 0 0 0 -6px;">
					<a class="sprite-style sprite-styleon_footer_06" style="display: inline-block;" href="#"></a>
				</li>
				<li style="display: inline-block; margin: 0 0 0 -6px;">
					<a class="sprite-style sprite-styleon_footer_07" style="display: inline-block;" href="#"></a>
				</li>
			</ul>
		</div>
	</div>
</div>
