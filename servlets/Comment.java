///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//
//package uk.ac.dundee.computing.aec.instagrim.servlets;
//
//import com.datastax.driver.core.Cluster;
//import java.io.IOException;
//import java.io.PrintWriter;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletConfig;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
//import uk.ac.dundee.computing.aec.instagrim.lib.Convertors;
//import uk.ac.dundee.computing.aec.instagrim.models.PicModel;
//import uk.ac.dundee.computing.aec.instagrim.models.User;
//import uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn;
//import uk.ac.dundee.computing.aec.instagrim.stores.Pic;
//
///**
// *
// * @author Administrator
// */
//@WebServlet( urlPatterns = {"/Comments/*"})
//public class Comment extends HttpServlet {
//
//    Cluster cluster=null;
//
//
//    public void init(ServletConfig config) throws ServletException {
//        // TODO Auto-generated method stub
//        cluster = CassandraHosts.getCluster();
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    
//    protected void processComment(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException{
//        response.setContentType("text/html;charset=UTF-8");
//    }
//    
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        
//        String args[] = Convertors.SplitRequestPath(request);
//        String imageUUID =args [2];
//        createComments(imageUUID, request, response);
//        
//        
//    }
//    
//     private void createComments(String imageUUID, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        PicModel pm = new PicModel();
//        pm.setCluster(cluster);
//        java.util.LinkedList<Comment> lsPics = pm.getComment(imageUUID);
//        RequestDispatcher rd = request.getRequestDispatcher("/comment.jsp");
//        request.setAttribute("Pic", imageUUID);
//        request.setAttribute("Comments", Comments);
//        rd.forward(request, response);
//
//    }
//     
//     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//      
//
//            String comment = request.getParameter("Comment");
//            String PUUID = request.getParameter("picid");
//            String user = request.getParameter("user");
//            PicModel pm = new PicModel();
//            pm.setCluster(cluster);
//            pm.submitComment (comment, PUUID, user);
//            response.sendRedirect("/Instagrim/Comments/"+PUUID);
//     }
//            
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
