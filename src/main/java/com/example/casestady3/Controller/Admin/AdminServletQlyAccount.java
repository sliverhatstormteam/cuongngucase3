package com.example.casestady3.Controller.Admin;

import com.example.casestady3.service.AccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/showAdminQuanly")
public class AdminServletQlyAccount extends HttpServlet {
    AccountService accountService = new AccountService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        req.setAttribute("accounts", accountService.getAllAccount());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/Admin/giaodienAdminQliAccount.jsp");
        requestDispatcher.forward(req,resp);
    }
}
