/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import post.PostDAO;
import post.PostDTO;
import user.UserDAO;
import user.UserDTO;

/**
 *
 * @author SE150925 Nguyen Van Hai Nam
 */
@WebServlet(name = "AdminLostAndFoundController", urlPatterns = {"/adminLostAndFound"})
public class AdminLostAndFoundController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PostDAO dao = new PostDAO();
            UserDAO udao = new UserDAO();
            int count = dao.getTotalPost();
            int countLostPost = dao.getTotalLostPost();
            int countFoundPost = dao.getTotalFoundPost();
            int countUser = udao.getTotalUser();
            
            int totalPostLastWeek = dao.getTotalPostLastWeek();
            int totalPostOf1DayAgo = dao.getTotalPost1DayAgo();
            int totalPostOf2DayAgo = dao.getTotalPost2DayAgo();
            int totalPostOf3DayAgo = dao.getTotalPost3DayAgo();
            int totalPostOf4DayAgo = dao.getTotalPost4DayAgo();
            int totalPostOf5DayAgo = dao.getTotalPost5DayAgo();
            int totalPostOf6DayAgo = dao.getTotalPost6DayAgo();
            int totalPostOf7DayAgo = dao.getTotalPost7DayAgo();
            
            int totalLostLastWeek = dao.getTotalLostLastWeek();
            int totalLostOf1DayAgo = dao.getTotalLost1DayAgo();
            int totalLostOf2DayAgo = dao.getTotalLost2DayAgo();
            int totalLostOf3DayAgo = dao.getTotalLost3DayAgo();
            int totalLostOf4DayAgo = dao.getTotalLost4DayAgo();
            int totalLostOf5DayAgo = dao.getTotalLost5DayAgo();
            int totalLostOf6DayAgo = dao.getTotalLost6DayAgo();
            int totalLostOf7DayAgo = dao.getTotalLost7DayAgo();
            
            int totalFoundLastWeek = dao.getTotalFoundLastWeek();
            int totalFoundOf1DayAgo = dao.getTotalFound1DayAgo();
            int totalFoundOf2DayAgo = dao.getTotalFound2DayAgo();
            int totalFoundOf3DayAgo = dao.getTotalFound3DayAgo();
            int totalFoundOf4DayAgo = dao.getTotalFound4DayAgo();
            int totalFoundOf5DayAgo = dao.getTotalFound5DayAgo();
            int totalFoundOf6DayAgo = dao.getTotalFound6DayAgo();
            int totalFoundOf7DayAgo = dao.getTotalFound7DayAgo();
            
            List<UserDTO> list5User=udao.get5NewUser();

            request.setAttribute("TOTALUSER", countUser);
            request.setAttribute("TOTALPOST", count);
            request.setAttribute("TOTALLOSTPOST", countLostPost);
            request.setAttribute("TOTALFOUNDPOST", countFoundPost);
            List<PostDTO> list5Lost = dao.get5NewLost();
            List<PostDTO> list5Found = dao.get5NewFound();
            for (PostDTO postDTO : list5Found) {
                if (postDTO.getTitle().length() > 50) {
                    String title = postDTO.getTitle().substring(0, 50);
                    postDTO.setTitle(title + "...");
                    System.out.println(postDTO.getTitle());
                }
            }
            for (PostDTO postDTO : list5Lost) {
                if (postDTO.getTitle().length() > 50) {
                    String title = postDTO.getTitle().substring(0, 50);
                    postDTO.setTitle(title + "...");
                    System.out.println(postDTO.getTitle());
                }
            }
            
            int[] dataPost = {totalPostOf7DayAgo, 
                              totalPostOf6DayAgo, 
                              totalPostOf5DayAgo, 
                              totalPostOf4DayAgo, 
                              totalPostOf3DayAgo, 
                              totalPostOf2DayAgo, 
                              totalPostOf1DayAgo};
            
            int[] dataLost = {totalLostOf7DayAgo, 
                              totalLostOf6DayAgo, 
                              totalLostOf5DayAgo, 
                              totalLostOf4DayAgo, 
                              totalLostOf3DayAgo, 
                              totalLostOf2DayAgo, 
                              totalLostOf1DayAgo};
            
            int[] dataFound = {totalFoundOf7DayAgo, 
                              totalFoundOf6DayAgo, 
                              totalFoundOf5DayAgo, 
                              totalFoundOf4DayAgo, 
                              totalFoundOf3DayAgo, 
                              totalFoundOf2DayAgo, 
                              totalFoundOf1DayAgo};
            
            request.setAttribute("LIST5LOST", list5Lost);
            request.setAttribute("LIST5FOUND", list5Found);
            request.setAttribute("LIST5USER", list5User);
            request.setAttribute("TOTAL_POST_LAST_WEEK", totalPostLastWeek);
            request.setAttribute("TOTAL_LOST_LAST_WEEK", totalLostLastWeek);
            request.setAttribute("TOTAL_FOUND_LAST_WEEK", totalFoundLastWeek);
            
            request.setAttribute("DATA", dataPost);
            request.setAttribute("DATA_LOST", dataLost);
            request.setAttribute("DATA_FOUND", dataFound);
        } catch (SQLException ex) {
            Logger.getLogger(AdminLostAndFoundController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            request.getRequestDispatcher("/Admin/AdminDashboard.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
