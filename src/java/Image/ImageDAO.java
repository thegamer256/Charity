/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Image;
import Program.ProgramImage;
import User.UserDAO;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author DINH TRUNG
 */
public class ImageDAO {
    
    public void addImage(List<? extends Image> images, String tableName) {
        if (tableName.equals("program_img")) {
            addProgramImage((List<ProgramImage>) images);
        }
    }
    
    public void addProgramImage(List<ProgramImage> images) {
        try {
            String sql = "insert into program_img(program_id, program_img_path) values(?, ?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            // TOBE: Implement update based on batch size
            int BATCH_SIZE = 200;

            for (ProgramImage image : images) {
                ps.setInt(1, image.getProgramId());
                ps.setString(2, image.getPath());
                ps.addBatch();
            }
            
            ps.executeBatch();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}