/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.daoImpl;

import com.example.dao.ProductDAO;
import com.example.model.Admin;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;

/**
 *
 * @author TRAN HUU DAT
 */
public class ProductDAOImpl implements ProductDAO {

    private SessionFactory sessionFactory;
    public ProductDAOImpl(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }
    @Override
    public List<Admin> list() {
        List<Admin> listProduct = (List<Admin>) sessionFactory.openSession().createCriteria(Admin.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY)
                .list();
        return listProduct;
    }

}
