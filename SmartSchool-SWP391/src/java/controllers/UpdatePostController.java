/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import post.PostDAO;
import post.PostDTO;

/**
 *
 * @author TQK
 */
@WebServlet(name = "UpdatePostController", urlPatterns = {"/updatePost"})
public class UpdatePostController extends HttpServlet {

    private static final String ERROR = "PostDetailController";
    private static final String SUCCESS = "PostDetailController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
//            HttpSession session = request.getSession();
//            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
//            String userId = loginUser.getUserId();
            int postId = Integer.parseInt(request.getParameter("postId"));
            InputStream inputStream = null;
            Part filePart = request.getPart("postImg");
            if (filePart != null) {
                inputStream = filePart.getInputStream();
            }
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            String type = request.getParameter("type");
            PostDAO dao = new PostDAO();
            dao.updatePost(postId, inputStream, description, type, title);
            url = SUCCESS;

        } catch (Exception e) {
            log("Error at DeletePostController: " + e.toString());
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
