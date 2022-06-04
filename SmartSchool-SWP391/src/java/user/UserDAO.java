/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utills.DBUtils;

/**
 *
 * @author SE150925 Nguyen Van Hai Nam
 */
public class UserDAO {

    private static final String REGISTER = "INSERT INTO tblUser(fullname, userId, password, email, phone) "
            + "Values(?, ?, ?, ?, ?)";
    private static final String LOGIN = "select * from tblUser where userId = ? and password=?";
    private static final String UPDATE_PASSWORD = "UPDATE tblUser SET password=? WHERE userId=?";
    private static final String CHECK_ACCOUNT = "SELECT * FROM tblUser WHERE userId = ?";

    public UserDTO login(String userId, String password) throws SQLException {
        UserDTO user = null;
        Connection con = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            con = DBUtils.getConnection();
            ptm = con.prepareStatement(LOGIN);
            ptm.setString(1, userId);
            ptm.setString(2, password);
            rs = ptm.executeQuery();
            while (rs.next()) {
                user = new UserDTO();
                user.setUserId(rs.getString("userId"));
                user.setRoleId(rs.getString("roleId"));
                user.setPassword(rs.getString("password"));
                user.setFullname(rs.getString("fullname"));
                user.setAvatar(rs.getBytes("avatar"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setCompAddress(rs.getString("compAddress"));
                user.setUserId(rs.getString("userId"));
                user.setUserStatus(rs.getBoolean("userStatus"));
                user.setHaveJob(rs.getBoolean("haveJob"));
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDTO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return user;
    }

    public UserDTO checkAccountExist(String userId) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        UserDTO user = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_ACCOUNT);
                ptm.setString(1, userId);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    user = new UserDTO();
                    user.setUserId(rs.getString("userId"));
                    user.setRoleId(rs.getString("roleId"));
                    user.setPassword(rs.getString("password"));
                    user.setFullname(rs.getString("fullname"));
                    user.setAvatar(rs.getBytes("avatar"));
                    user.setPhone(rs.getString("phone"));
                    user.setEmail(rs.getString("email"));
                    user.setCompAddress(rs.getString("compAddress"));
                    user.setUserId(rs.getString("userId"));
                    user.setUserStatus(rs.getBoolean("userStatus"));
                    user.setHaveJob(rs.getBoolean("haveJob"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return null;
    }

    public void signup(String fullname, String userId, String password, String email, String phone) 
                        throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(REGISTER);
                ptm.setString(1, fullname);
                ptm.setString(2, userId);
                ptm.setString(2, password);
                ptm.setString(2, email);
                ptm.setString(2, phone);
                ptm.executeUpdate();
            }
        } catch (Exception e) {

        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }

//    public boolean createNewAccount(UserDTO dto) throws SQLException {
//        if (dto == null) {
//            return false;
//        }
//        Connection conn = null;
//        PreparedStatement ptm = null;
//
//        try {
//            conn = DBUtils.getConnection();
//            if (conn != null) {
//                ptm = conn.prepareStatement(REGISTER);
//                ptm.setString(1, dto.getFullname());
//                ptm.setString(2, dto.getUserId());
//                ptm.setString(3, dto.getPassword());
//                ptm.setString(4, dto.getEmail());
//                ptm.setString(5, dto.getPhone());
//                
//                int row = ptm.executeUpdate();
//                if (row > 0) {
//                    return true;
//                }
//                
//            }
//        } catch (Exception e) {
//        } finally {
//            if (ptm != null) {
//                ptm.close();
//            }
//            if (conn != null) {
//                conn.close();
//            }
//        }
//        return false;
//    }
    
    
    //Change Password
}
