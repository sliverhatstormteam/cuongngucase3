package com.example.casestady3.Controller.AddProduct;

import com.example.casestady3.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/xoaCart")
public class deleteCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> cartList = (List<Product>) session.getAttribute("products");
        System.out.println(cartList);
        for (int i = 0; i < cartList.size(); i++) {
            if (cartList.get(i).getProductID()== Integer.parseInt( request.getParameter("id"))){
                cartList.remove(i);
            }
        }
        request.setAttribute("cartList", cartList);
        System.out.println(cartList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/gioHangUser.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
