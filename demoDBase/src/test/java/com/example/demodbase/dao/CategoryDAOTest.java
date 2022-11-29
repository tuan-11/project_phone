package com.example.demodbase.dao;

import com.example.demodbase.entity.Category;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertTrue;

class CategoryDAOTest {

    private static CategoryDAO categoryDAO;

    @BeforeAll
    static void setUpBeforeClass() {
        categoryDAO = new CategoryDAO();
    }

    @AfterAll
    static void tearDownAfterClass() {
//        categoryDAO.close();
    }

    @Test
    void testCreateCategory() {
        Category category = new Category();
        category.setCategoryName("Huawei");

        category = categoryDAO.create(category);

        assertTrue(category != null && category.getCategoryId() > 0);
    }
}