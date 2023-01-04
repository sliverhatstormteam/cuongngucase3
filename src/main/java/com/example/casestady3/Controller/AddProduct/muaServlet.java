package com.example.casestady3.Controller.AddProduct;

import com.example.casestady3.DAO.DataBaseConnection.BillDetailDAO;
import com.example.casestady3.DAO.DataBaseConnection.KindDAO;
import com.example.casestady3.DAO.DataBaseConnection.billDAO;
import com.example.casestady3.DAO.DataBaseConnection.productDAO;
import com.example.casestady3.model.Account;
import com.example.casestady3.model.Bill;
import com.example.casestady3.model.BillDetail;
import com.example.casestady3.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/mua")
public class muaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> cartsList = (List<Product>) session.getAttribute("products");
        Account account = (Account) session.getAttribute("account");
        double tong =0;
        for (int i = 0; i < cartsList.size() ; i++) {
            tong+= cartsList.get(i).getPrice();
        }
        if (tong==0){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/showClient");
            requestDispatcher.forward(request,response);
        }
        else {
            Bill bill = new Bill(account.getId(),tong);
            billDAO.createBill(bill);

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("Done.jsp");
            requestDispatcher.forward(request,response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> cartsList = (List<Product>) session.getAttribute("products");
        Account account = (Account) session.getAttribute("account");
        System.out.println(billDAO.getBillID());
        BillDetail billDetail = new BillDetail();
        for (int i = 0; i < cartsList.size() ; i++) {
            billDetail.setBillID(  billDAO.getBillID());
            billDetail.setProductID(cartsList.get(i).getProductID());
            billDetail.setAmount(1);
            billDetail.setPrice(cartsList.get(i).getPrice());
            BillDetailDAO.createBillDetail(billDetail);
        }
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String key = request.getParameter("key");

        double gia1 = 0;
        double gia2 = 0;

        try {
            gia1=Double.parseDouble(request.getParameter("price1"));
            gia2=Double.parseDouble(request.getParameter("price2"));
        }
        catch ( Exception o){
            gia1=0;
            gia2=500000000;
        }
        if (key == null) {
            key = "";
        }
        request.setAttribute("kinds", KindDAO.getAll());
        request.setAttribute("products", productDAO.find(key,gia1,gia2));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request,response);
    }
}
