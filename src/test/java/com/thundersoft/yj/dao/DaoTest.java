package com.thundersoft.yj.dao;


import com.thundersoft.yj.entity.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class DaoTest {
    @Autowired
    BrandDao brandDao;
    @Autowired
    ProductDao productDao;
    @Autowired
    TypeDao typeDao;
    @Autowired
    FeatureDao featureDao;
    @Autowired
    SkuDao skuDao;

    @Test
    public void getBrands() {
        List<Brand> brands = brandDao.getBrands("依琦莲", null, 0, 3);
        System.out.println(brands);
    }

    @Test
    public void getProducts() {
        List<Product> products = productDao.getProducts(null, null, null, 2, 2);
        System.out.println(products);
    }

    @Test
    public void getTotal() {
        int total = productDao.getTotal(null, null, null);
        System.out.println(total);
    }
    @Test
    public void saveBrand(){
        Brand brand=new Brand();
        brand.setDescription("ddd");
        brand.setIsDisplay((byte)0);
        brand.setName("kkk");

        brandDao.saveBrand(brand);
    }
    @Test
    public void getAllType(){
        List<Type> types = typeDao.getAllType();
        System.out.println(types);
    }
    @Test
    public void getAllFeature(){
        List<Feature> features = featureDao.getAllFeature();
        System.out.println(features);
    }
    @Test
    public void getProductsFront(){
        List<Product> products = productDao.getProductsFront(0, 2);
        System.out.println(products);
    }
    @Test
    public void getSkusByProductId(){
        List<Sku> skus = skuDao.getSkusByProductId(327, 0, 2);
        System.out.println(skus);
    }
    @Test
    public void getSkuTotal(){
        int total = skuDao.getTotal(327);
        System.out.println(total);
    }
}
