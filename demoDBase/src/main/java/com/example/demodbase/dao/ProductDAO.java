package com.example.demodbase.dao;

import com.example.demodbase.entity.Product;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductDAO extends AbstractDAO<Product> implements GenericDAO<Product> {

    @Override
    public Product create(Product product) {
        return super.create(product);
    }

//    @Override
//    public Product update(Product product) {
//        // TODO Auto-generated method stub
//        product.setLastUpdateTime(new Date());
//        return super.update(product);
//    }
//
//    @Override
//    public Product get(Object productId) {
//        // TODO Auto-generated method stub
//        return super.find(Product.class, productId);
//    }

    //    @Override
//    public long count() {
//        // TODO Auto-generated method stub
//        return super.countWithNamedQuery("Product.countAll");
//    }

    @Override
    public void delete(Object productId) {
        super.delete(Product.class, productId);
    }

    public List<Product> getAllProduct(int indexPage) {
        return super.findWithNamedQuery("Product.getAll", 12, indexPage);
    }

    public List<Product> listCheapProducts() {
        return super.findWithNamedQuery("Product.listCheapProducts", 3);
    }

    public List<Product> listNewProducts() {
        // TODO Auto-generated method stub
        return super.findWithNamedQuery("Product.listNewProducts", 3);
    }
    public List<Product> listOldProducts() {
        // TODO Auto-generated method stub
        return super.findWithNamedQuery("Product.listOldProducts", 3);
    }

    public List<Product> getProductsByPrice(long from, long to) {
        return super.findWithNamedQuery("Product.getProductsByPrice", "from", from, "to", to);
    }
    public List<Product> listByCategory(int categoryId) {
        return super.findWithNamedQuery("Product.findByCategory", "categoryId", categoryId);
    }

    public List<Product> search(String keyword) {
        return super.findWithNamedQuery("Product.search", "keyword", keyword);
    }
//
//    public long countByCategory(int categoryId) {
//        // TODO Auto-generated method stub
//        return super.countWithNamedQuery("Product.countByCategory", "categoryId", categoryId);
//    }
//
//    public List<Product> listBestSellingProducts() {
//        // TODO Auto-generated method stub
//        return super.findWithNamedQuery("OrderDetail.bestSelling", 0, 4);
//    }
//
//    public List<Product> listMostFavoredProducts() {
//        // TODO Auto-generated method stub
//        List<Product> mostFavoredProducts = new ArrayList<>();
//        List<Object[]> result = super.findWithNamedQueryObjects("Review.mostFavoredProducts", 0, 4);
//
//        if (!result.isEmpty()) {
//            for (Object[] elements : result) {
//                Product product = (Product) elements[0];
//                mostFavoredProducts.add(product);
//            }
//        }
//
//        return mostFavoredProducts;
//    }
//
//    public List<Product> sortByPriceDesc(int categoryId) {
//        // TODO Auto-generated method stub
//        return super.findWithNamedQuery("Product.sortByPriceDesc", "categoryId", categoryId);
//    }
//
//    public List<Product> sortByPriceAsc(int categoryId) {
//        // TODO Auto-generated method stub
//        return super.findWithNamedQuery("Product.sortByPriceAsc", "categoryId", categoryId);
//    }
//
//    public List<Product> sortByNewest(int categoryId) {
//        // TODO Auto-generated method stub
//        return super.findWithNamedQuery("Product.sortByNewest", "categoryId", categoryId);
//    }
    public List<Product> searchByCheck(int[] cid) {
        String sql = "SELECT p FROM Product p";
        if (cid != null && cid[0] != 0) {
            sql += " where categoryId in(";
            for (int i = 0; i < cid.length; i++) {
                sql += cid[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("phoneWeb");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(sql);
        List<Product> result = query.getResultList();
        entityManager.close();
        return result;
    }

    public int getNumberPage(){
        int total = super.countWithNamedQuery("Product.getAll");
        int countPage = 0;
        countPage = total / 12;
        if(total % 12 != 0){
            countPage++;
        }
        return countPage;
    }
}
