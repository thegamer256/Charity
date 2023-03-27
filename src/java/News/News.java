/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package News;

import java.util.List;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;



@Builder
@Getter
@Setter
@ToString
public class News {

    private int newsId;
    private String newsTitle;
    private String newsDes;
    private String shortDes;
    private String postedDate;
    private int userId;
    private List<String> imgsPath;


}
