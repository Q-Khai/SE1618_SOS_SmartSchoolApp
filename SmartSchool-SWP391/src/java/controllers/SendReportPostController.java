/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import report.ReportDAO;
import user.UserDTO;

/**
 *
 * @author SE150925 Nguyen Van Hai Nam
 */
@WebServlet(name = "SendReportPostController", urlPatterns = {"/sendReportPost"})
public class SendReportPostController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "";
        int postId = Integer.parseInt(request.getParameter("postId"));
        String reportDetail = request.getParameter("reportDetail");
        int reportTypeId = Integer.parseInt(request.getParameter("reportTypeId"));
        HttpSession session = request.getSession();
        UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
        String userId = request.getParameter("userId");
        if (loginUser == null) {
            response.sendRedirect("login.jsp");
        } else {

            try {
                if (loginUser.getUserId().equals(userId)) {
                    request.setAttribute("ERORMESSAGE", "Không thể báo cáo bài viết của mình!");

                } else {

                    ReportDAO dao = new ReportDAO();
                    int reportedCount = dao.getTotleReported(loginUser.getUserId(), postId);
                    if (reportedCount >= 1) {
                        request.setAttribute("ERORMESSAGE", "Tối đa 1 lần báo cáo trên 1 bài viết");
                    } else if (reportedCount < 3) {
                        dao.sendReport(loginUser.getUserId(), postId, reportTypeId, reportDetail);
                        request.setAttribute("SUCCESSMESSAGE", "Báo cáo thành công");
                    }
                }
                url = "main?postId=" + postId + "&userId=" + userId + "&action=Detail";
            } catch (SQLException ex) {
                Logger.getLogger(SendReportPostController.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                request.getRequestDispatcher(url).forward(request, response);
//                response.sendRedirect(url);
            }
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
