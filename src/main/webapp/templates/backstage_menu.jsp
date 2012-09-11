<%@page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />
<img src="<%= resource.getImageUrl("collection_footer_backstage.png") %>" width="415px" height="52px"/>

<script language="JavaScript">
		var lastID = null;
		var handleMouseover = function(e) {
			var target = e.target || e.srcElement;
			lastID = target.id;
			if (lastID == 'num1' || lastID == 'num2' || lastID == 'num3'
					|| lastID == 'num4' || lastID == 'num5' || lastID == 'num6'
					|| lastID == 'num7' || lastID == 'num8' || lastID == 'num9'
					|| lastID == 'num10') {
				$('#number-list').removeClass();
				$('#number-list').addClass("num num-" + lastID);
				$('#backstage_main').removeClass();
				$('#backstage_main').addClass("backstage_main-" + lastID);

			} else {
			}
		};
		if (document.addEventListener) {
			document.addEventListener('click', handleMouseover, false);
		} else {
			document.attachEvent('onmouseover', handleMouseover);
		}
	</script>