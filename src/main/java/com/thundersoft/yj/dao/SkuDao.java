package com.thundersoft.yj.dao;

import com.thundersoft.yj.entity.Sku;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SkuDao {
    List<Sku> getSkusByProductId(@Param("productId") Integer productId, @Param("begin") int begin, @Param("pageSize") int pageSize);
    int getTotal(@Param("productId") Integer productId);
    void saveSku(Sku sku);

    void updateSku(Sku sku);

    /**
     * 查询库存>0的某商品下的所有sku
     * @param productId
     * @return
     */
    List<Sku> getSkus(@Param("productId") Integer productId);
}
