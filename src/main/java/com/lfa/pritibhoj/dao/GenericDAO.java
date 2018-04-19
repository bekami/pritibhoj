/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pritibhoj.dao;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Sanjay07
 */
public interface GenericDAO<T>{
    List<T> getAll() throws ClassNotFoundException,SQLException;
    T getById(int id) throws ClassNotFoundException,SQLException;
    int insert(T t) throws ClassNotFoundException,SQLException;
    int update(T t) throws ClassNotFoundException,SQLException;
    int delete(int id) throws ClassNotFoundException,SQLException;
    
}
