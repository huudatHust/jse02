/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.dao;

import com.example.model.Product;
import java.util.List;

/**
 *
 * @author TRAN HUU DAT
 */
public interface ProductDAO {
    List<Product> list();
}