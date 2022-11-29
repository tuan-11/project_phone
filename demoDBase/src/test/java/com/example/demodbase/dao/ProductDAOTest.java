package com.example.demodbase.dao;

import com.example.demodbase.entity.Category;
import com.example.demodbase.entity.Product;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class ProductDAOTest {

    private static ProductDAO productDAO;

    @BeforeAll
    static void setUpBeforeClass() {
        productDAO = new ProductDAO();
    }

    @AfterAll
    static void tearDownAfterClass() {
        productDAO.close();
    }

//    @Test
//    void testCreateProduct() throws ParseException, IOException {
//        Product newProduct = new Product();
//
//        newProduct.setProductName("Effective Java (2nd Edition)");
//        newProduct.setDescription("New coverage of generics, enums, annotations, autoboxing");
//        newProduct.setPrice(1500000L);
//        newProduct.setImage("../ProductStoreWebsite/products/Effective Java.jpg");
//
//        DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
//        Date releaseDate = dateFormat.parse("05/28/2008");
//        newProduct.setReleaseDate(releaseDate);
//
//        Product createdProduct = productDAO.create(newProduct);
//
//        Assertions.assertTrue(createdProduct.getProductId() > 0);
//    }

//    @Test
//    void testDeleteProductFail() {
//        Integer productId = 34;
//        productDAO.delete(productId);
//    }

    @Test
    void testListAll() {
        List<Product> listProduct = productDAO.listByCategory(2);
        for (Product product : listProduct) {
            System.out.println(product.getProductName() + " - " + product.getProductName());
        }
        Assertions.assertFalse(listProduct.isEmpty());
    }

}