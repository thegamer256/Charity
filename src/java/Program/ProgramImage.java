/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Program;
import Image.Image;
import lombok.Getter;
import lombok.Setter;
/**
 *
 * @author DINH TRUNG
 */
@Getter
@Setter
public class ProgramImage extends Image {
    private int programId;
    
    public ProgramImage(int id, String path, int programId) {
        super(id, path);
    }
}