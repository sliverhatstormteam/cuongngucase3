package com.example.casestady3.Controller.Bill;

import com.example.casestady3.DAO.DataBaseConnection.KindDAO;
import com.example.casestady3.DAO.DataBaseConnection.productDAO;
import com.example.casestady3.model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/crud")

public class crudSERVLET extends HttpServlet {
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
        RequestDispatcher dispatcher = req.getRequestDispatcher("/HQC/VIEW/trangQuanTriJSP.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        int productID = Integer.parseInt(req.getParameter("productID"));
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String brand = req.getParameter("brand");
        String name = req.getParameter("productName");
        String img = req.getParameter("img");
        double price = Double.parseDouble(req.getParameter("price"));
        int kindID = Integer.parseInt(req.getParameter("kindID"));
        String decscription = req.getParameter("decscription");
        String color = req.getParameter("color");
        Product product = new Product(brand, name, img, price,kindID,decscription,color);
        productDAO.save(product);
        resp.sendRedirect("/crud");
    }
}
