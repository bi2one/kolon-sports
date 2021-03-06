package com.mobitle.kolonsports;

import java.util.ArrayList;
import java.net.URL;
import javax.servlet.http.HttpServletRequest;

import org.omg.CORBA.Request;
import org.omg.PortableInterceptor.RequestInfo;

public class PageResourceBean implements java.io.Serializable {
	private String indexPageUrl;
	private String allPageUrl;
	private String templateUrl;
	private String cssJspUrl;
	private String scriptJspUrl;
	private String sidebarJspUrl;
	private String footerJspUrl;
	// private ArrayList<ThumbnailLink> thumbnails;

	private String contextPath;
	private String mediaUrl;
	private String imageUrl;
	private String movieUrl;
	private String cssUrl;
	private String scriptUrl;
	private String browser;

	public void init(HttpServletRequest request) {
		setIndexPageUrl("/index.jsp");
		setAllPageUrl("/allpage.jsp");
		setTemplateUrl("/templates");
		setCssJspUrl(getTemplateUrl("css.jsp"));
		setScriptJspUrl(getTemplateUrl("script.jsp"));
		setSidebarJspUrl(getTemplateUrl("sidebar.jsp"));
		setFooterJspUrl(getTemplateUrl("footer.jsp"));

		setContextPath(request.getContextPath());
		setMediaUrl(getContextPath("media"));
		setImageUrl(getMediaUrl("images"));
		setMovieUrl(getMediaUrl("movies"));
		setScriptUrl(getMediaUrl("js"));
		setCssUrl(getMediaUrl("css"));
		setBrowser(request.getHeader("User-Agent"));
	}

	private void initThumbnails() {
		// if (thumbnails == null)
		// thumbnails = new ArrayList();
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// thumbnails.add(new ThumbnailLink("#", getImageUrl("thumbnail.png")));
		// }
		//
		// public ArrayList getThumbnails() {
		// initThumbnails();
		// return thumbnails;
	}

	public void setBrowser(String browser) {
		this.browser = browser;
	}

	public void setCssUrl(String url) {
		this.cssUrl = url;
	}

	public String getCssUrl() {
		return cssUrl;
	}

	public String getCssUrl(String name) {
		return cssUrl + "/" + name;
	}

	public void setIndexPageUrl(String url) {
		this.indexPageUrl = url;
	}

	public void setAllPageUrl(String url) {
		this.allPageUrl = url;
	}

	public void setTemplateUrl(String url) {
		this.templateUrl = url;
	}

	public void setCssJspUrl(String url) {
		this.cssJspUrl = url;
	}

	public void setScriptJspUrl(String url) {
		this.scriptJspUrl = url;
	}

	public void setSidebarJspUrl(String url) {
		this.sidebarJspUrl = url;
	}

	public void setFooterJspUrl(String url) {
		this.footerJspUrl = url;
	}

	public void setContextPath(String path) {
		this.contextPath = path;
	}

	public void setMediaUrl(String url) {
		this.mediaUrl = url;
	}

	public void setImageUrl(String url) {
		this.imageUrl = url;
	}

	public void setMovieUrl(String url) {
		this.movieUrl = url;
	}

	public void setScriptUrl(String url) {
		this.scriptUrl = url;
	}

	public String getContextPath() {
		return contextPath;
	}

	public String getContextPath(String path) {
		return contextPath + "/" + path;
	}

	public String getMediaUrl() {
		return mediaUrl;
	}

	public String getMediaUrl(String path) {
		return mediaUrl + "/" + path;
	}

	public String getTemplateUrl() {
		return templateUrl;
	}

	public String getTemplateUrl(String filename) {
		if (filename == null || "".equals(filename)) {
			return getTemplateUrl("empty");
		} else {
			return templateUrl + "/" + filename;
		}
	}

	public String getBrowser() {
		return browser;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public String getImageUrl(String filename) {
		return imageUrl + "/" + filename;
	}

	public String getMovieUrl() {
		return movieUrl;
	}

	public String getMovieUrl(String filename) {
		return movieUrl + "/" + filename;
	}

	public String getScriptUrl() {
		return scriptUrl;
	}

	public String getScriptUrl(String filename) {
		return scriptUrl + "/" + filename;
	}

	public String getIndexPageUrl() {
		return indexPageUrl;
	}

	public String getAllPageUrl() {
		return allPageUrl;
	}

	public String getCssJspUrl() {
		return cssJspUrl;
	}

	public String getScriptJspUrl() {
		return scriptJspUrl;
	}

	public String getSidebarJspUrl() {
		return sidebarJspUrl;
	}

	public String getFooterJspUrl() {
		return footerJspUrl;
	}

	public String getPageUrl(int page) {
		return "page.jsp?page=" + page;
	}

	public String vedioStarter(String video){
    	String vdo;
    	String url=movieUrl+"/"+video;
    	
    	if(browser.indexOf("MSIE") > 0) {
    		vdo = "<embed src='"+url+"' type='application/x-shockwave-flash' width='100%' height='600px' allowscriptaccess='always' allowfullscreen='true' autoplay/>";
        }
    	else {
    		vdo = "<video id='video' src='"+url+"' controls style='width: 80%; height: 480px; margin:auto;'> <source src='"+url+"' type='video/mov' autoplay></source></video>";
    	}
    	return vdo;
    }
}
