package com.example.demodbase.controller.shop;

import com.example.demodbase.dao.CategoryDAO;
import com.example.demodbase.dao.ProductDAO;
import com.example.demodbase.entity.Category;
import com.example.demodbase.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShopServlet", value = "/shop1")
public class ShopServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    //Kiểm tra có chọn checkbox không
    private boolean ischeck(int d, int[] id){
        if(id ==null){
            return false;
        }else{
            for(int i = 0; i < id.length; i++){
                if(id[i] == d){
                    return true;
                }
            }
            return false;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/shop.jsp";

        String[] pp={"Dưới 2 triệu","Từ 2-4 triệu","Từ 4-7 triệu","Từ 7-13 triệu","Từ 13-20 triệu","Trên 20 triệu"};
        int numberPage = 0;

        boolean[] pb=new boolean[pp.length+1];
        CategoryDAO categoryDAO = new CategoryDAO();
        ProductDAO productsDAO = new ProductDAO();
        List<Product> products = new ArrayList<>();

        List<Category> category = categoryDAO.getAll();
        boolean[] chid = new boolean[category.size()+1];

        String [] cidd_raw = request.getParameterValues("cidd"); //thương hiệu
        String [] price = request.getParameterValues("price");
        String cid_raw = request.getParameter("cid");
        String key = request.getParameter("search");
        if(key!=null){
            products = productsDAO.search(key);
        }

//        String index = request.getParameter("index");
//        if(index==null) {
//            index = "1";
//        }
//        int indexPage = Integer.parseInt(index);
////        List<ProductEntity> productscheckCatid = new ArrayList<>();

        int cid=0;
        if(cid_raw != null){
            cid=Integer.parseInt(cid_raw);
            products = productsDAO.listByCategory(cid);
            for (Product product : products) {
                System.out.println(product.getProductName() + " - " + product.getProductName());
            }
        }
        if(cid_raw==null){
            chid[0]=true;
        }
//
//        int[] cidd = null;
////        if(cidd_raw != null){
////            cidd = new int[cidd_raw.length];
////            for(int i=0; i<cidd.length;i++){
////                cidd[i] = Integer.parseInt(cidd_raw[i]);
////            }
//////            productscheckCatid = categoryDAO.getProductCheck(cidd);
////            products = productsDAO.searchByCheck(cidd);
//////            numberPage = productsDAO.getNumberPageProduct(productscheckCatid.size());
////
////        }
//        if((cidd_raw != null) && (cidd[0] != 0)){
//            chid[0] = false;
//            for(int i = 1; i <chid.length; i++){
//                if(ischeck(category.get(i-1).getCategoryId(), cidd)){
//                    chid[i] = true;
//                }else{
//                    chid[i] = false;
//                }
//            }
//        }

        if(price != null){
            long from = 0, to = 0;
            for(int i=0; i<price.length; i++){
                List<Product> temp = new ArrayList<>();
                if(price[i].equals("0")){
                    from = 0;
                    to = 50000000;
                    products = productsDAO.getProductsByPrice(from, to);
                    pb[0] = true;
                    break;
                }else{
                    if(price[i].equals("1")){
                        from = 0;
                        to = 2000000;
                        temp = productsDAO.getProductsByPrice(from, to);
                        products.addAll(temp);
                        pb[1] = true;

                        for (Product product : products) {
                            System.out.println(product.getProductName() + " - " + product.getProductName());
                        }
                    }
                    if(price[i].equals("2")){
                        from = 2000000;
                        to = 4000000;
                        temp = productsDAO.getProductsByPrice(from, to);
                        products.addAll(temp);
                        pb[2] = true;
                    }
                    if(price[i].equals("3")){
                        from = 4000000;
                        to = 7000000;
                        temp = productsDAO.getProductsByPrice(from, to);
                        products.addAll(temp);
                        pb[3] = true;
                    }
                    if(price[i].equals("4")){
                        from = 7000000;
                        to = 13000000;
                        temp = productsDAO.getProductsByPrice(from, to);
                        products.addAll(temp);
                        pb[4] = true;
                    }
                    if(price[i].equals("5")){
                        from = 13000000;
                        to = 20000000;
                        temp = productsDAO.getProductsByPrice(from, to);
                        products.addAll(temp);
                        pb[5] = true;
                    }
                    if(price[i].equals("6")){
                        from = 20000000;
                        to = 50000000;
                        temp = productsDAO.getProductsByPrice(from, to);
                        products.addAll(temp);
                        pb[6] = true;
                    }
                }
            }
        }
        if(price == null){
            pb[0] = true;
        }
////        int[] pprice = null;
////        if(price != null){
////            pprice = new int[price.length];
////            for(int i=0; i<pprice.length;i++){
////                pprice[i] = Integer.parseInt(price[i]);
////            }
////        }
////
////        if((price == null && cidd_raw == null && cid_raw == null && key == null)){
////            products = productsDAO.getAllProduct((indexPage-1)*12);
////            numberPage = productsDAO.getNumberPage();
////        }
//
        request.setAttribute("data", category);
        request.setAttribute("products", products);
        request.setAttribute("pp", pp);
        request.setAttribute("pb", pb);
        request.setAttribute("cid", cid);
//        request.setAttribute("chid", chid);
////        request.setAttribute("numberPage", numberPage);
////        request.setAttribute("indexPage", indexPage);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
