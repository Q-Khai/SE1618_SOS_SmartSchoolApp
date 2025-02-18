/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import user.UserDAO;
import user.UserDTO;

/**
 *
 * @author TQK
 */
@WebServlet(name = "SignUpController", urlPatterns = {"/signup"})
public class SignUpController extends HttpServlet {

    private static final String SUCCESS = "register.jsp";
    private static final String ERROR = "register.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String fullname = request.getParameter("fullName");
            String userId = request.getParameter("userName");
            String password = request.getParameter("password");
            String rePassword = request.getParameter("repassword");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            UserDAO dao = new UserDAO();
            UserDTO user = dao.checkAccountExist(userId);
            if (user != null) {
                request.setAttribute("ERROR", "Tên đăng nhập đã tồn tại!");
                request.setAttribute("FULLNAME", fullname);
                request.setAttribute("USERNAME", userId);
                request.setAttribute("EMAIL", email);
                request.setAttribute("PHONE", phone);
            } else {
                dao.signup(fullname, userId, password, email, phone);
                request.setAttribute("SUCCESS", "Đăng ký tài khoản thành công!");
                url = SUCCESS;
            }
        } catch (Exception e) {
            log("Error at SignUpController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
