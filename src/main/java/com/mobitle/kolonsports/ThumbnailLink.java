package com.mobitle.kolonsports;

public class ThumbnailLink implements java.io.Serializable {
    private String pageUrl;
    private String imageUrl;

    public ThumbnailLink(String pageUrl, String imageUrl) {
        this.pageUrl = pageUrl;
        this.imageUrl = imageUrl;
    }

    public String getPageUrl() {
        return pageUrl;
    }

    public String getImageUrl() {
        return imageUrl;
    }
}