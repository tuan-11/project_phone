package com.example.demodbase.dao;

import com.example.demodbase.entity.Category;

import java.util.List;


public class CategoryDAO extends AbstractDAO<Category> implements GenericDAO<Category> {

    @Override
    public Category create(Category category) {
        return super.create(category);
    }

//    @Override
//    public Category update(Category category) {
//        // TODO Auto-generated method stub
//        return super.update(category);
//    }
//
//    @Override
//    public Category get(Object categoryId) {
//        // TODO Auto-generated method stub
//        return super.find(Category.class, categoryId);
//    }
//
    @Override
    public void delete(Object categoryId) {
        // TODO Auto-generated method stub
        super.delete(Category.class, categoryId);
    }
//
    public List<Category> getAll() {
        return super.findWithNamedQuery("Category.getAll");
    }
//
//    @Override
//    public long count() {
//        // TODO Auto-generated method stub
//        return super.countWithNamedQuery("Category.countAll");
//    }
//
//    public Category findByName(String categoryName) {
//        // TODO Auto-generated method stub
//        List<Category> result = super.findWithNamedQuery("Category.findByName", "name", categoryName);
//
//        if (result != null && result.size() > 0) {
//            return result.get(0);
//        }
//
//        return null;
//    }
}
