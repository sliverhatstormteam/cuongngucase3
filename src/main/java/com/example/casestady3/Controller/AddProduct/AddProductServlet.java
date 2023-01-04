package com.example.casestady3.Controller.AddProduct;

import com.example.casestady3.model.Product;
import com.example.casestady3.DAO.DataBaseConnection.productDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> products = (List<Product>) session.getAttribute("products");

        int id = Integer.parseInt(request.getParameter("id"));
        products.add(productDAO.findById(id));
        session.setAttribute("products", products);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/showClient");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> products = (List<Product>) session.getAttribute("products");

        int id = (int) request.getAttribute("id");
        products.add(productDAO.findById(id));
        session.setAttribute("products", products);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/showClient");
        requestDispatcher.forward(request, response);
    }
}
