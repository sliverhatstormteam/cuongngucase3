package com.example.casestady3.Controller.Comment;

import com.example.casestady3.DAO.commentDAO;
import com.example.casestady3.model.CommentHihi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/addComment")
public class addCommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println();
        System.out.println( );
        String content = request.getParameter("content");
        if (content!=null) {
            CommentHihi commentHihi = new CommentHihi( Integer.parseInt(request.getParameter("userID")),content,Integer.parseInt(request.getParameter("productID")));
            System.out.println(commentHihi);

            commentDAO.saveComment(commentHihi);
        }
        response.sendRedirect("/showClient");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
