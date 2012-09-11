package com.mobitle.kolonsports;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

public class PageResource {
    private volatile static PageResource instance;
    private static HttpServletResponse response;
    private static HttpServletRequest request;
    private static String contextPath;

    private PageResource() { }

    private static void setRequest(HttpServletRequest request) {
        instance.request = request;
        instance.contextPath = request.getContextPath();
    }

    private static void setResponse(HttpServletResponse response) {
        instance.response = response;
    }

    public static PageResource getInstance(HttpServletRequest request, HttpServletResponse response) {
        if (instance == null) {
            synchronized(PageMapper.class) {
                if (instance == null) {
                    instance = new PageResource();
                }
            }
        }
        setRequest(request);
        setResponse(response);
        return instance;
    }

    public String getIndexPageUrl() {
        return "/index.jsp";
    }

    public String getAllPageUrl() {
        return "/allpage.jsp";
    }

    public String getImageUrl(String filename) {
        return this.contextPath + "/media/images/" + filename;
    }

    public String getScriptUrl(String filename) {
        return this.contextPath + "/media/js/" + filename;
    }

    public String getMoveiUrl(String filename) {
        return this.contextPath + "/media/movies/" + filename;
    }

    public String getMenuUrl(String filename) {
        return getTemplateUrl(filename);
    }

    public String getCssJspUrl() {
        return getTemplateUrl("css");
    }

    public String getScriptJspUrl() {
        return getTemplateUrl("script");
    }
    
    public String getSidebarJspUrl() {
        return getTemplateUrl("sidebar");
    }

    public String getFooterJspUrl() {
        return getTemplateUrl("footer");
    }


    public String getTemplateUrl(String filename) {
        if (filename.endsWith(".jsp"))
            return "/templates/" + filename;
        else
            return "/templates/" + filename + ".jsp";
    }
}