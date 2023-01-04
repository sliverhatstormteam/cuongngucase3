package com.example.casestady3.Controller.Bill;

import com.example.casestady3.DAO.DataBaseConnection.BillDetailDAO;
import com.example.casestady3.DAO.DataBaseConnection.KindDAO;
import com.example.casestady3.DAO.DataBaseConnection.billDAO;
import com.example.casestady3.DAO.DataBaseConnection.productDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/bill")
public class BillServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        req.setAttribute("kinds", KindDAO.getAll());
        req.setAttribute("products", productDAO.getAllProduct());
        req.setAttribute("billinfos", billDAO.getBillInfo());
        req.setAttribute("billDetails", BillDetailDAO.getBillDetail());
        RequestDispatcher dispatcher = req.getRequestDispatcher("/HQC/VIEW/quanLiHoaDonJSP.jsp");
        dispatcher.forward(req, resp);
    }
}
