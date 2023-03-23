/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Donate;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LE ANH TUAN
 */
public class DonateDAO {
    public int getWalletAmount(int accountId) {
        try {
            Connection conn;
            PreparedStatement ps;
            ResultSet rs;

            String query = "select bank_monney_amount from donor where account_id=?";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(query);
            ps.setInt(1, accountId);

            rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("bank_monney_amount");
            }

        } catch (SQLException ex) {
            Logger.getLogger(DonateDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DonateDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
}
