package com.example.casestady3.Controller.Client;

import com.example.casestady3.DAO.DataBaseConnection.BillDetailDAO;
import com.example.casestady3.DAO.DataBaseConnection.billDAO;
import com.example.casestady3.model.Account;
import com.example.casestady3.service.AccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/inforAccountClient")
public class InforAccountClient extends HttpServlet {
    AccountService accountService = new AccountService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Account account = (Account) session.getAttribute("account");
        req.setAttribute("account",account);
        req.setAttribute("billinfos", billDAO.getBillInfo());
        req.setAttribute("billDetails", BillDetailDAO.getBillDetail());
        req.setAttribute("bills", billDAO.getBillInfoById(account.getId()));
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/Client/EditClient.jsp");
        dispatcher.forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
