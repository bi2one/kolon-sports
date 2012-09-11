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
        pages.add("collection");//1
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

        pages.add("styleon"); // 12
        /** look book pages */
        pages.add("lookbook");
        pages.add("lookbook_1");
        pages.add("lookbook_2");
        pages.add("lookbook_3");
        pages.add("lookbook_4");
        pages.add("lookbook_5");
        pages.add("lookbook_6");
        pages.add("lookbook_7");
        pages.add("lookbook_8");
        pages.add("lookbook_9");
        pages.add("lookbook_10");
        pages.add("lookbook_11");
        pages.add("lookbook_12");
        pages.add("lookbook_13");
        pages.add("lookbook_14");
        pages.add("lookbook_15");
        pages.add("lookbook_16");
        pages.add("lookbook_17");
        pages.add("lookbook_18");
        pages.add("lookbook_19");
        pages.add("lookbook_20");
        pages.add("lookbook_21");
        pages.add("lookbook_22");
        pages.add("lookbook_23");
        pages.add("lookbook_24");
        /** ~look book pages */
        
        /** style pick pages by KMS */
        pages.add("stylepick"); //page=38
        pages.add("stylepick_1");
        pages.add("stylepick_2");
        pages.add("stylepick_3");
        pages.add("stylepick_4");
        pages.add("stylepick_5");
        pages.add("stylepick_6");
        pages.add("stylepick_7");
        pages.add("stylepick_8");
        pages.add("stylepick_9");
        pages.add("stylepick_10");
        /** ~style pick pages by KMS */
        

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
        pages.add("collection_movie");//movie test (page.jsp?page=76)
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
    
    public String getLink(int index)//return link
    {
    	return "page.jsp?page="+index;
    }
    
}