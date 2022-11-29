package com.example.demodbase.dao;

import java.util.List;

public interface GenericDAO<T> {
    public T create(T e);

//    T update(T e);
//
//    T get(Object id);
//
    void delete(Object id);

//    long count();
}
