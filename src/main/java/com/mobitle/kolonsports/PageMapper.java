package com.mobitle.kolonsports;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

public class PageMapper {
    private volatile static PageMapper instance;
    private ArrayList<String> pages;
    private static HttpServletRequest request;
    private static String contextPath;

    private PageMapper() {
        pages = new ArrayList();
        addPages();
    }

    private static void setRequest(HttpServletRequest request) {
        instance.request = request;
        instance.contextPath = request.getContextPath();
    }

    public static PageMapper getInstance(HttpServletRequest request) {
        if (instance == null) {
            synchronized(PageMapper.class) {
                if (instance == null) {
                    instance = new PageMapper();
                }
            }
        }
        setRequest(request);
        return instance;
    }

    private void addPages() {
        pages.add("collection");//o
        /** backstage pages */
        pages.add("backstage_1");
        pages.add("backstage_2");
        pages.add("backstage_3");
        pages.add("backstage_4");
        pages.add("backstage_5");
        pages.add("backstage_6");
        pages.add("backstage_7");
        pages.add("backstage_8");
        pages.add("backstage_9");
        pages.add("backstage_10");
        /** ~backstage pages */

        pages.add("styleon");
        /** look book pages */
        pages.add("lookbook");
        pages.add("lookbook_w1");
        pages.add("lookbook_w2");
        pages.add("lookbook_w3");
        pages.add("lookbook_w4");
        pages.add("lookbook_w5");
        pages.add("lookbook_w6");
        pages.add("lookbook_w7");
        pages.add("lookbook_w8");
        pages.add("lookbook_w9");
        pages.add("lookbook_w10");
        pages.add("lookbook_m1");
        pages.add("lookbook_m2");
        pages.add("lookbook_m3");
        pages.add("lookbook_m4");
        pages.add("lookbook_m5");
        pages.add("lookbook_m6");
        pages.add("lookbook_m7");
        pages.add("lookbook_m8");
        pages.add("lookbook_m9");
        pages.add("lookbook_m10");
        /** ~look book pages */

        /** essential items pages */
        pages.add("essential");
        pages.add("essential_s1");
        pages.add("essential_s2");
        pages.add("essential_s3");
        pages.add("essential_s4");
        pages.add("essential_s5");
        pages.add("essential_s6");
        pages.add("essential_s7");
        pages.add("essential_s8");
        pages.add("essential_s9");
        pages.add("essential_s10");
        pages.add("essential_m1");
        pages.add("essential_m2");
        pages.add("essential_m3");
        pages.add("essential_m4");
        pages.add("essential_m5");
        pages.add("essential_m6");
        pages.add("essential_m7");
        pages.add("essential_m8");
        /** ~essential items pages */

        /** glacial pages */
        pages.add("glacial");
        pages.add("glacial_1");
        pages.add("glacial_2");
        pages.add("glacial_3");
        pages.add("glacial_4");
        pages.add("glacial_5");
        pages.add("glacial_6");
     
        /** ~glacial pages */
        pages.add("in_this_issue");
        pages.add("collection_movie");//movie test (page.jsp?page=61)
    }

    public String getIndexPageUrl() {
        return "/index.jsp";
    }

    public String getAllPageUrl() {
        return "/allpage.jsp";
    }

    public String getUrl(String index) {
        // TODO; index validation
        return getUrl(Integer.parseInt(index));
    }

    public String getUrl(int index) {
        index--;
        StringBuilder url = new StringBuilder();
        url.append(pages.get(index));
        url.append(".jsp");
        return getTemplate(url.toString());
    }

    public String getImageUrl(String imageName) {
        return this.contextPath + "/media/images/" + imageName;
    }

    public String getCSSUrl(String cssName) {
        return this.contextPath + "/media/css/" + cssName;
    }

    public String getScriptUrl(String name) {
        return this.contextPath + "/media/js/" + name;
    }

    public String getTemplate(String filename) {
        return "/templates/" + filename;
    }
    
    public String getMovieUrl(String movieName) {
        return this.contextPath + "/media/movies/" + movieName;
    }

    public String getBottomMenuUrl(String index) {
        // TODO; index validation
        return getBottomMenuUrl(Integer.parseInt(index));
    }

    public String getBottomMenuUrl(int index) {
        index--;
        return getTemplate(pages.get(index).split("_")[0] + "_menu.jsp");
    }
    
}