/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.action;

import com.example.dao.ProductDAO;
import com.example.model.Admin;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author TRAN HUU DAT
 */
public class ListProductAction extends ActionSupport {
    @Autowired
    private ProductDAO productDAO;
    private List<Admin> listProduct;

    public void setProductDAO(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    public String execute() {
        listProduct = productDAO.list();
        return SUCCESS;
    }

    public List<Admin> getListProduct() {
        return listProduct;
    }

}
