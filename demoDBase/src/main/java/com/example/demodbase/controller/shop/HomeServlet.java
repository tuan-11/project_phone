package com.example.demodbase.controller.shop;

import com.example.demodbase.dao.ProductDAO;
import com.example.demodbase.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/index.jsp";

        ProductDAO productDAO = new ProductDAO();

        List<Product> product_cheapList = productDAO.listCheapProducts();
        List<Product> product_newList = productDAO.listNewProducts();
        List<Product> product_oldList = productDAO.listOldProducts();


        request.setAttribute("product_trending", product_cheapList);
        request.setAttribute("product_newList", product_newList);
        request.setAttribute("product_oldList", product_oldList);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
