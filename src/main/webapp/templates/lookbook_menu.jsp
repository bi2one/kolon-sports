<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.PageMapper" %>
<%
	PageMapper pageMapper = PageMapper.getInstance(request);
%>

<div class="center-nav">
	<!-- white space images -->
	<div class="sprite-style sprite-lookbook_footer_01" style="margin: 0 0 0 0; float:left;"></div>
	<div class="sprite-style sprite-lookbook_footer_03" style="margin: 0 0 0 0; float: right;"></div>
	<!-- ~white space images -->
	<div>
		<div class="sprite-style sprite-lookbook_footer_02" style="margin: 0 0 0 0; display: inline-block;"></div>
		<div style="margin: 0 34px 0 26px; width: 355px; height: 16px;">
			<ul>
				<li style="display: inline-block; margin: 0 0 0 -3px;">
					<a class="sprite-style sprite-lookbook_footer_04" style="display: block;" href="#"></a>
				</li>
				<li style="display: inline-block; margin: 0 0 0 -6px;">
					<a class="sprite-style sprite-lookbook_footer_05" style=" display: inline-block;" href="#"></a>
				</li>
				<li style="display: inline-block; margin: 0 0 0 -6px;">
					<a class="sprite-style sprite-lookbook_footer_06" style="display: inline-block;" href="#"></a>
				</li>
				<li style="display: inline-block; margin: 0 0 0 -6px;">
					<a class="sprite-style sprite-lookbook_footer_07" style="display: inline-block;" href="#"></a>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="paging" style="margin-top: 5px; width: 187px; margin: auto;">
	<% 
		for(int i=1; i<=24; i++) { 
			if (i == 1) {
	%>
		<div style="display: inline-block;">
		<ul>
			<li>
				<a class="sprite-style sprite-lookbook-num_<%=i%>" style="display: block;" herf="#"></a>
			</li>
	<%		
			} else if (i%3 != 0){
	%>
			<li>
				<a class="sprite-style sprite-lookbook-num_<%=i%>" style="display: block;" herf="#"></a>
			</li>
	<%
			} else if (i%3 == 0){
	%>
			<li>
				<a class="sprite-style sprite-lookbook-num_<%=i%>" style="display: block;" herf="#"></a>
			</li>
		</ul>
		</div>
		<div style="display: inline-block;">
		<ul>
	<%
			}
		}
	%>

		
	</div>
</div>
