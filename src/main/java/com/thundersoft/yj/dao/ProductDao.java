package com.thundersoft.yj.dao;


import com.thundersoft.yj.entity.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductDao {
    List<Product> getProducts(@Param("name") String name, @Param("brandId") Byte brandId, @Param("isShow") Byte isShow, @Param("begin") int begin, @Param("pageSize") int pageSize);

    int getTotal(@Param("name") String name, @Param("brandId") Byte brandId, @Param("isShow") Byte isShow);

    void saveProduct(Product product);

    //下面前台
    List<Product> getProductsFront(@Param("begin") int begin, @Param("pageSize") int pageSize);


    //前台带条件查询
    List<Product> getProductsFront2(@Param("brandId") Integer brandId, @Param("typeId") Integer typeId, @Param("begin") int begin, @Param("pageSize") int pageSize);
    int getTotalFront2(@Param("brandId") Integer brandId, @Param("typeId") Integer typeId);

    int getTotalFront();

    //修改商品多张图上传的状态
    void updateProductIsDel(@Param("productId") Integer productId);

    Product getProductById(@Param("productId") Integer productId);
}
