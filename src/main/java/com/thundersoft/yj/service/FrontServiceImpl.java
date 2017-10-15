package com.thundersoft.yj.service;

import com.thundersoft.yj.dao.ImgDao;
import com.thundersoft.yj.dao.ProductDao;
import com.thundersoft.yj.dao.SkuDao;
import com.thundersoft.yj.entity.Img;
import com.thundersoft.yj.entity.Product;
import com.thundersoft.yj.entity.Sku;
import com.thundersoft.yj.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FrontServiceImpl implements FrontService {
    @Autowired
    ProductDao productDao;
    @Autowired
    ImgDao imgDao;
    @Autowired
    SkuDao skuDao;

    @Override
    public Map getProductByOptionFront(int pageNo, int limit) {
        int offset = (pageNo - 1) * limit;
        List<Product> productVOS = productDao.getProductsFront(offset, limit);
        int total = productDao.getTotalFront();
        Map map = new HashMap();
        map.put("total", total);
        map.put("rows", productVOS);
        int pages = (total + Constants.PAGE_SIZE - 1) / Constants.PAGE_SIZE;//总页数
        map.put("pages", pages);
        return map;
    }

    @Override
    public Map getProductByOptionFront(int pageNo, int limit, Integer brandId, Integer typeId) {
        int offset = (pageNo - 1) * limit;
        List<Product> products = productDao.getProductsFront2(brandId, typeId, offset, limit);
        int total = productDao.getTotalFront2(brandId, typeId);
        int pages = (total + Constants.PAGE_SIZE - 1) / Constants.PAGE_SIZE;//总页数
        Map map = new HashMap();
        map.put("total", total);
        map.put("rows", products);
        map.put("pages", pages);
        map.put("pageNo", pageNo);
        return map;
    }

    @Override
    public Product getProductById(Integer id) {
        return productDao.getProductById(id);
    }


    @Override
    public List<Img> getImgsByProductId(Integer productId) {
        return imgDao.getImgsByProductId(productId);
    }

    @Override
    public List<Sku> getSkus(Integer productId){
        return skuDao.getSkus(productId);
    }
}
