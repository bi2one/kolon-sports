package com.mobitle.kolonsports;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PageInfoFactory {
    // public static PageInfo getPageInfo(HttpServletRequest request, HttpServletResponse response) {
    //     return getPageInfo(request, response, request.getParameter("page"));
    // }
    
    // public static PageInfo getPageInfo(HttpServletRequest request, HttpServletResponse response, String page) {
    //     return getPageInfo(request, response, Integer.parseInt(page));
    // }
    
    // public static PageInfo getPageInfo(HttpServletRequest request, HttpServletResponse response, int page) {
    //     PageInfo info = new PageInfo(request, response, 1, "collection", "collection", "thumb", "collection_menu");
    //     switch(page) {
    //     case 1:
    //         info = new PageInfo(request, response, 2, "collection", "thumb", "collection_menu");
    //         break;
    //     case 2:
    //         info = new PageInfo(request, response, 3, "collection", "thumb", "collection_menu");
    //         break;
    //     case 3:
    //         info = new PageInfo(request, response, 4, "collection", "thumb", "collection_menu");
    //         break;
    //     case 4:
    //         info = new PageInfo(request, response, 5, "collection", "thumb", "collection_menu");
    //         break;
    //     case 5:
    //         info = new PageInfo(request, response, 6, "collection", "thumb", "collection_menu");
    //         break;
    //     }
    //     return info;
    // }

    // public static class PageInfo {
    //     private int page;
    //     private String name;
    //     private String contentUrl;
    //     private String thumbnailUrl;
    //     private String menuUrl;
        
    //     public PageInfo(HttpServletRequest request, HttpServletResponse response, int page, String name, String contentFilename, String thumbnailFilename, String menuFilename) {
    //         PageResource resource = PageResource.getInstance(request, response);
    //         this.page = page;
    //         this.name = name;
    //         this.contentUrl = resource.getTemplateUrl(contentFilename);
    //         this.thumbnailUrl = resource.getImageUrl(thumbnailFilename);
    //         this.menuUrl = resource.getMenuUrl(menuFilename);
    //     }
        
    //     public PageInfo(int page, String name, String contentUrl, String thumbnailUrl, String menuUrl) {
    //         this.page = page;
    //         this.name = name;
    //         this.contentUrl = contentUrl;
    //         this.thumbnailUrl = thumbnailUrl;
    //         this.menuUrl = menuUrl;
    //     }

    //     public int getPage() {
    //         return page;
    //     }

    //     public String getContentUrl() {
    //         return contentUrl;
    //     }

    //     public String getName() {
    //         return name;
    //     }

    //     public String getThumbnailUrl() {
    //         return thumbnailUrl;
    //     }

    //     public String getMenuUrl() {
    //         return menuUrl;
    //     }
    // }
}