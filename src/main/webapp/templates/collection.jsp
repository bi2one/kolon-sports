<%@page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="resource" class="com.mobitle.kolonsports.PageResourceBean" scope="session" />

<div class="collection_list">
	<ul id="menu-list">
<<<<<<< HEAD
	<li id="first_menu" class=""><a id="single_image" href=""><img id="first-button" src="<%=pageMapper.getImageUrl("menu1-n.png")%>"  alt="" onmouseover="this.src='<%=pageMapper.getImageUrl("menu1-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu1-n.png")%>'"/></a></li>
	<li id="second_menu" class=""><a href=""><img id="second-button"  src="<%=pageMapper.getImageUrl("menu2-n.png")%>" onmouseover="this.src='<%=pageMapper.getImageUrl("menu2-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu2-n.png")%>'"/></a></li>
	<li id="third_menu" class="" ><a href=""><img id="third-button"  src="<%=pageMapper.getImageUrl("menu3-n.png")%>"onmouseover="this.src='<%=pageMapper.getImageUrl("menu3-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu3-n.png")%>'"/></a></li>
	<li id="fourth_menu" class=""><a href="<%=pageMapper.getLink(2)%>" ><img id="fourth-button"  src="<%=pageMapper.getImageUrl("menu4-n.png")%>"onmouseover="this.src='<%=pageMapper.getImageUrl("menu4-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu4-n.png")%>'"/></a></li>
	<li id="fifth_menu" class="" style="float: left; margin-top: -60;"><a href=<%=pageMapper.getLink(2) %>><img id="fifth-button"  src="<%=pageMapper.getImageUrl("menu5-n.png")%>"onmouseover="this.src='<%=pageMapper.getImageUrl("menu5-r.png")%>'" onmouseout="this.src='<%=pageMapper.getImageUrl("menu5-n.png")%>'"/></a></li>
	</ul>
</div>



=======
	<li id="first_menu" class=""><a id="single_image" href=""><img id="first-button" src="<%=resource.getImageUrl("menu1-n.png")%>"  alt="" onmouseover="this.src='<%=resource.getImageUrl("menu1-r.png")%>'" onmouseout="this.src='<%=resource.getImageUrl("menu1-n.png")%>'"/></a></li>
	<li id="second_menu" class=""><a href=""><img id="second-button"  src="<%=resource.getImageUrl("menu2-n.png")%>" onmouseover="this.src='<%=resource.getImageUrl("menu2-r.png")%>'" onmouseout="this.src='<%=resource.getImageUrl("menu2-n.png")%>'"/></a></li>
	<li id="third_menu" class="" ><a href=""><img id="third-button"  src="<%=resource.getImageUrl("menu3-n.png")%>"onmouseover="this.src='<%=resource.getImageUrl("menu3-r.png")%>'" onmouseout="this.src='<%=resource.getImageUrl("menu3-n.png")%>'"/></a></li>
	<li id="fourth_menu" class=""><a href="" ><img id="fourth-button"  src="<%=resource.getImageUrl("menu4-n.png")%>"onmouseover="this.src='<%=resource.getImageUrl("menu4-r.png")%>'" onmouseout="this.src='<%=resource.getImageUrl("menu4-n.png")%>'"/></a></li>
	<li id="fifth_menu" class="" style="float: left; margin-top: -60;"><a href=<%=resource.getPageUrl(2) %>><img id="fifth-button"  src="<%=resource.getImageUrl("menu5-n.png")%>"onmouseover="this.src='<%=resource.getImageUrl("menu5-r.png")%>'" onmouseout="this.src='<%=resource.getImageUrl("menu5-n.png")%>'"/></a></li>
	</ul>
</div>

<script>
var ie = "<embed src='<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' type='application/x-shockwave-flash' width='100%' height='600px' allowscriptaccess='always' allowfullscreen='true'/>";
var el = "<video id='video' src='<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>' controls style='width: 80%; height: 480px; margin:auto;'> <source src='<%=resource.getMovieUrl("kolon_G_Loop_smpl_comp.mov")%>'type='video/mov'></source></video>";

$(document).ready(function() {
	if( navigator.appName.indexOf("Microsoft") > -1 ){ // IE?
		$("a#single_image").fancybox({
			'scrolling'     : 'no',
			'overlayOpacity': 0.1,
			'showCloseButton'   : false,
			'width' : 500,
			'height': 300,
			'autoDimensions': false,
			'autoSize': false,
			'content' : ie
		});
	}
	else{
		$("a#single_image").fancybox({
			'scrolling'     : 'no',
	        'overlayOpacity': 0.1,
	        'showCloseButton'   : false,
			'width' : 500,
			'height': 300,
			'autoDimensions': false,
			'autoSize': false,
	        'content' : el
		});
	}
	
	/* Using custom settings */
});
</script>
>>>>>>> ad4be0e8817e4679767b3a57abf7c0639bf80e5e
