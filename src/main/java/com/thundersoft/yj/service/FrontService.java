package com.thundersoft.yj.service;

import com.thundersoft.yj.entity.Img;
import com.thundersoft.yj.entity.Product;
import com.thundersoft.yj.entity.Sku;

import java.util.List;
import java.util.Map;

public interface FrontService {
    Map getProductByOptionFront(int pageNo, int limit);
    Map getProductByOptionFront(int pageNo, int limit,Integer brandId,Integer typeId);
    Product getProductById(Integer id);

    List<Img> getImgsByProductId(Integer productId);

    /**
     * 查询库存>0的某商品下的所有sku
     * @param productId
     * @return
     */
    List<Sku> getSkus(Integer productId);
}
