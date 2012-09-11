package com.mobitle.kolonsports;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PageInfoBean implements java.io.Serializable {
    private int page;
    private String name;
    private String contentFileName;
    private String menuFileName;
    private String thumbnailFileName;

    private String menuUrl = "";
    private String contentUrl = "";
    private String mediaUrl = "";
    private String templateUrl = "";
        
    public PageInfoBean() { }

    public void init(HttpServletRequest request) {
        mediaUrl = request.getContextPath();
        templateUrl = "/templates";
        menuUrl = templateUrl;
        contentUrl = templateUrl;
    }
    
    public void setPage(final int page) {
        switch(page) {
        case 1:
            setValues(page, "collection", "collection", "collection_menu", "thumb");
            break;
        case 2:
            setValues(page, "collection", "collection2", "collection_menu2", "thumb");
            break;
        case 3:
            setValues(page, "collection", "collection3", "collection_menu3", "thumb");
            break;
        case 4:
            setValues(page, "collection", "collection4", "collection_menu4", "thumb");
            break;
        case 5:
            setValues(page, "collection", "collection", "collection_menu", "thumb");
            break;
        default:
            setPage(1);
        }
    }

    private void setValues(int page, String name , String contentFileName, String menuFileName, String thumbnailFileName) {
        this.page = page;
        setName(name);
        setContentFileName(contentFileName);
        setMenuFileName(menuFileName);
        setThumbnailFileName(thumbnailFileName);
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setContentFileName(String filename) {
        if (filename.endsWith(".jsp"))
            this.contentFileName = filename;
        else
            this.contentFileName = filename + ".jsp";
    }

    public void setMenuFileName(String filename) {
        if (filename.endsWith(".jsp"))
            this.menuFileName = filename;
        else
            this.menuFileName = filename + ".jsp";
    }

    public void setThumbnailFileName(String filename) {
        this.thumbnailFileName = filename;
    }

    public int getPage() {
        return page;
    }

    public String getContentFileName() {
        return contentFileName;
    }

    public String getMenuFileName() {
        return menuFileName;
    }

    public String getThumbnailFileName() {
        return thumbnailFileName;
    }

    public String getContentUrl() {
        return contentUrl + "/" + contentFileName;
    }

    public String getThumbnailUrl() {
        return mediaUrl + "/images/" + thumbnailFileName;
    }

    public String getMenuUrl() {
        return menuUrl + "/" + menuFileName;
    }
}