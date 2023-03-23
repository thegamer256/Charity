/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package News;

import java.util.List;

/**
 *
 * @author huynh
 */
public class News {

    private int newsId;
    private String newsTitle;
    private String newsDes;
    private String shortDes;
    private String postedDate;
    private int userId;
    private List<String> imgsPath;

    public News() {
    }

    public News(int newsId, String newsTitle, String newsDes, String shortDes, String postedDate, int userId, List<String> imgsPath) {
        this.newsId = newsId;
        this.newsTitle = newsTitle;
        this.newsDes = newsDes;
        this.shortDes = shortDes;
        this.postedDate = postedDate;
        this.userId = userId;
        this.imgsPath = imgsPath;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsDes() {
        return newsDes;
    }

    public void setNewsDes(String newsDes) {
        this.newsDes = newsDes;
    }

    public String getShortDes() {
        return shortDes;
    }

    public void setShortDes(String shortDes) {
        this.shortDes = shortDes;
    }

    public String getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(String postedDate) {
        this.postedDate = postedDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public List<String> getImgsPath() {
        return imgsPath;
    }

    public void setImgsPath(List<String> imgsPath) {
        this.imgsPath = imgsPath;
    }

    @Override
    public String toString() {
        return "News{" + "newsId=" + newsId + ", newsTitle=" + newsTitle + ", newsDes=" + newsDes + ", shortDes=" + shortDes + ", postedDate=" + postedDate + ", userId=" + userId + ", imgsPath=" + imgsPath + '}';
    }
    
    
}
