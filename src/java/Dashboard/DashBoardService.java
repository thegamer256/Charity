/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dashboard;

/**
 *
 * @author LE ANH TUAN
 */
public class DashBoardService {
    DashBoardDAO dao = new DashBoardDAO();
    
    public double getTotal(String totalCase) {
        return dao.getTotal(totalCase);
    }
    
    public double getTotalGoal() {
        return dao.getTotalGoal();
    }
}
