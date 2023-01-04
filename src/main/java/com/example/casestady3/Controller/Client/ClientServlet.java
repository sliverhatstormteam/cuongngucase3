package com.example.casestady3.Controller.Client;

import com.example.casestady3.DAO.DataBaseConnection.KindDAO;
import com.example.casestady3.DAO.DataBaseConnection.productDAO;
import com.example.casestady3.DAO.commentDAO;
import com.example.casestady3.model.CommentHihi;
import com.example.casestady3.service.AccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/showClient")
public class ClientServlet extends HttpServlet {
    AccountService accountService = new AccountService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String key = req.getParameter("key");

        double gia1 = 0;
        double gia2 = 0;

        try {
            gia1=Double.parseDouble(req.getParameter("price1"));
            gia2=Double.parseDouble(req.getParameter("price2"));
        }
        catch ( Exception o){
            gia1=0;
            gia2=500000000;
        }
        if (key == null) {
            key = "";
        }
        req.setAttribute("kinds", KindDAO.getAll());
        req.setAttribute("products", productDAO.find(key,gia1,gia2));
        req.setAttribute("accounts", accountService.getAllAccount());
        req.setAttribute("comments", commentDAO.getCommentById());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(req,resp);
    }
}
