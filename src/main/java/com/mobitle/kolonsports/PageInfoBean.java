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
    private String bookImageFileName;

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
            setValues(page, "collection", "collection", "empty", "collection", "collection_menu", "collection_bg.jpg");
            break;
        case 2:
            // setValues(page, "runway_video", "collection", "runway_video", "collection", "collection_menu", "thumb");
            setValues(page, "backstage", "", "", null, "backstage_menu", "backstage_bg.jpg");
            break;
        case 3:
            setValues(page, "backstage_1", "", "", null, "backstage_menu", "backstage_1_bg.jpg");
            break;
        case 4:
            setValues(page, "backstage_2", "", "", null, "backstage_menu", "backstage_2_bg.jpg");
            break;
        case 5:
            setValues(page, "backstage_3", "", "", null, "backstage_menu", "backstage_3_bg.jpg");
            break;
        case 6:
            setValues(page, "backstage_4", "", "", null, "backstage_menu", "backstage_4_bg.jpg");
            break;
        case 7:
            setValues(page, "backstage_5", "", "", null, "backstage_menu", "backstage_5_bg.jpg");
            break;
        case 8:
            setValues(page, "styleon", "", "", "styleon", "styleon_menu", "styleon_bg.jpg");
            break;
        case 9:
            setValues(page, "lookbook", "", "", "lookbook", "lookbook_menu", "book.jpg");
            break;
        case 10:
            setValues(page, "lookbook_m1", "", "", null, "lookbook_menu", "lookbook_m1_bg.jpg");
            break;
        case 11:
            setValues(page, "lookbook_m2", "", "", null, "lookbook_menu", "lookbook_m2_bg.jpg");
            break;
        case 12:
            setValues(page, "lookbook_m3", "", "", null, "lookbook_menu", "lookbook_m3_bg.jpg");
            break;
        case 13:
            setValues(page, "lookbook_m4", "", "", null, "lookbook_menu", "lookbook_m4_bg.jpg");
            break;
        case 14:
            setValues(page, "lookbook_m5", "", "", null, "lookbook_menu", "lookbook_m5_bg.jpg");
            break;
        case 15:
            setValues(page, "lookbook_m6", "", "", null, "lookbook_menu", "lookbook_m6_bg.jpg");
            break;
        case 16:
            setValues(page, "lookbook_m7", "", "", null, "lookbook_menu", "lookbook_m7_bg.jpg");
            break;
        case 17:
            setValues(page, "lookbook_m8", "", "", null, "lookbook_menu", "lookbook_m8_bg.jpg");
            break;
        case 18:
            setValues(page, "lookbook_m9", "", "", null, "lookbook_menu", "lookbook_m9_bg.jpg");
            break;
        case 19:
            setValues(page, "lookbook_m10", "", "", null, "lookbook_menu", "lookbook_m10_bg.jpg");
            break;
        case 20:
            setValues(page, "lookbook_w1", "", "", null, "lookbook_menu", "lookbook_w1_bg.jpg");
            break;
        case 21:
            setValues(page, "lookbook_w2", "", "", null, "lookbook_menu", "lookbook_w2_bg.jpg");
            break;
        case 22:
            setValues(page, "lookbook_w3", "", "", null, "lookbook_menu", "lookbook_w3_bg.jpg");
            break;
        case 23:
            setValues(page, "lookbook_w4", "", "", null, "lookbook_menu", "lookbook_w4_bg.jpg");
            break;
        case 24:
            setValues(page, "lookbook_w5", "", "", null, "lookbook_menu", "lookbook_w5_bg.jpg");
            break;
        case 25:
            setValues(page, "lookbook_w6", "", "", null, "lookbook_menu", "lookbook_w6_bg.jpg");
            break;
        case 26:
            setValues(page, "lookbook_w7", "", "", null, "lookbook_menu", "lookbook_w7_bg.jpg");
            break;
        case 27:
            setValues(page, "lookbook_w8", "", "", null, "lookbook_menu", "lookbook_w8_bg.jpg");
            break;
        case 28:
            setValues(page, "lookbook_w9", "", "", null, "lookbook_menu", "lookbook_w9_bg.jpg");
            break;
        case 29:
            setValues(page, "lookbook_w10", "", "", null, "lookbook_menu", "lookbook_w10_bg.jpg");
            break;
        case 38:
            setValues(page, "stylepick", "", "", "stylepick", "stylepick_menu");
            break;
        case 39:
            setValues(page, "stylepick_1", "", "", "stylepick_1", "stylepick_menu");
            break;
        case 49:
            setValues(page, "in_this_issue", "", "", "styleon", "collection_menu", "in_this_issue_bg.jpg");
            break;
        case 76:
            setValues(page, "movie_test", "", "", "collection_movie", "collection_menu");
        default:
            setPage(1);
        }
    }

    private void setValues(int page, String name , String bigCtgName, String smallCtgName, String contentFileName, String menuFileName) {
        setValues(page, name, bigCtgName, smallCtgName, contentFileName, menuFileName, "");
    }

    /* Override */
    private void setValues(int page, String name, String bigCtgName, String smallCtgName, String contentFileName, String menuFileName, String bookImageFileName) {
        this.page = page;
        setName(name);
        setBigCtgName(bigCtgName);
        setSmallCtgName(smallCtgName);
        setContentFileName(contentFileName);
        setMenuFileName(menuFileName);
        setBookImageFileName(bookImageFileName);
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

    public void setBookImageFileName(String bookImageFileName) {
        this.bookImageFileName = bookImageFileName;
    }

    public String getBookImageFileName() {
        return bookImageFileName;
    }

    public void setContentFileName(String filename) {
        if (filename == null || "".equals(filename) || filename.endsWith(".jsp"))
            this.contentFileName = filename;
        else
            this.contentFileName = filename + ".jsp";
    }

    public void setMenuFileName(String filename) {
        if (filename == null || "".equals(filename) || filename.endsWith(".jsp"))
            this.menuFileName = filename;
        else
            this.menuFileName = filename + ".jsp";
    }

    // public void setThumbnailFileName(String filename) {
    //     this.thumbnailFileName = filename;
    // }


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

    // public String getThumbnailFileName() {
    //     return thumbnailFileName;
    // }

    public String getContentUrl() {
        return contentUrl + "/" + contentFileName;
    }

    // public String getThumbnailUrl() {
    //     return mediaUrl + "/images/" + thumbnailFileName;
    // }

    public String getMenuUrl() {
        return menuUrl + "/" + menuFileName;
    }
}