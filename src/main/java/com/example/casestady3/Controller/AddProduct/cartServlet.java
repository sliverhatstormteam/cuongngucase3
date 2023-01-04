package com.example.casestady3.Controller.AddProduct;

import com.example.casestady3.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/cart")
public class cartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> carts = (List<Product>) session.getAttribute("products");
        request.setAttribute("cartList", carts);
        System.out.println(carts);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/gioHangUser.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
