package com.mobitle.kolonsports;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PageInfoBean implements java.io.Serializable {
    private int page;
    private String name;
    private String bigCtgName;    // Collection, Style On, In This Issue, Event
    private String smallCtgName;
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
            //setValues(page, "collection", "collection", "collection_menu", "thumb");
            setValues(page, "collection_main", "collection", "empty", "collection", "collection_menu", "thumb");
        	break;
        case 2:
            //setValues(page, "backstage_1", "backstage_1", "backstage_menu", "thumb");
            setValues(page, "runway_video", "collection", "runway_video", "collection", "collection_menu", "thumb");
            break;
        case 3:
            //setValues(page, "backstage_1", "backstage_1", "backstage_menu", "thumb");
            setValues(page, "designer_interview", "collection", "des_interview", "collection", "collection_menu", "thumb");
            break;
        case 4:
            //setValues(page, "backstage_1", "backstage_1", "backstage_menu", "thumb");
            setValues(page, "backstage_main", "collection", "backstage", "backstage_1", "backstage_menu", "thumb");
            break;
        case 11:
            //setValues(page, "styleon", "styleon", "styleon_menu", "thumb");
        	setValues(page, "styleon_main", "styleon", "empty", "styleon", "styleon_menu", "thumb");
            break;
        case 13:
            setValues(page, "lookbook", "lookbook", "lookbook_menu", "thumb");
            break;
        case 15:
        	setValues(page, "lookbook_2", "lookbook_2", "lookbook_menu", "thumb");
            break;
        case 38:
            setValues(page, "stylepick", "stylepick", "stylepick_menu", "thumb");
            break;
        case 39:
            setValues(page, "stylepick_1", "stylepick_1", "stylepick_menu", "thumb");
            break;
        case 76:
            setValues(page, "movei_test", "collection_movie", "collection_menu", "thumb");
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
    
    /* Override */
    private void setValues(int page, String name, String bigCtgName, String smallCtgName, String contentFileName, String menuFileName, String thumbnailFileName) {
        this.page = page;
        setName(name);
        setBigCtgName(bigCtgName);
        setSmallCtgName(smallCtgName);
        setContentFileName(contentFileName);
        setMenuFileName(menuFileName);
        setThumbnailFileName(thumbnailFileName);
    }

    
    // setter
    
    public void setName(String name) {
        this.name = name;
    }
    
    public void setBigCtgName(String bigCtgName){  // big category
    	this.bigCtgName = bigCtgName;
    }
    
    public void setSmallCtgName(String SmallCtgName){
    	this.smallCtgName = SmallCtgName;
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

    
    // getter
    
    public int getPage() {
        return page;
    }
    
    public String getBigCtgName() {
    	return bigCtgName;
    }
    
    public String getSmallCtgName() {
    	return smallCtgName;
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