/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.daoImpl;

import com.example.dao.ProductDAO;
import com.example.model.Product;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;

/**
 *
 * @author TRAN HUU DAT
 */
public class ProductDAOImpl implements ProductDAO{
 private SessionFactory sessionFactory;
 
    public ProductDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
 
    @Override
    @Transactional
    public List<Product> list() {
        @SuppressWarnings("unchecked")
        List<Product> listProduct = (List<Product>)
            sessionFactory.getCurrentSession().createCriteria(Product.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY)
                .list();
        return listProduct;
    }

}
