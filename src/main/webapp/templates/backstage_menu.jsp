<%@page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />

<div class="co co-third-button" id="collection_menu">
<ul style="padding-top: 35px;height: 24px; ">
<li style="height: 100%; width:210px;float: left;"><a id="first-button" href="" style="float: left; width: 100%;height: 100%;"></a></li>
<li style="height: 100%; width:120px;float: left;"><a  id="second-button" href="" style="float: left; width: 100%;height: 100%;"></a></li>
<li style="height: 100%; width:70px;float: left;"><a id="third-button" href="<%=resource.getPageUrl(2)%>" style="float: left; width: 100%;height: 100%;"></a></li>
</ul>
</div>
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