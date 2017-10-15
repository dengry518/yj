package com.thundersoft.yj.service;

import com.thundersoft.yj.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BackService {


    Map getBrandsByOptions(String name, Byte isDisplay, int offset, int limit);


    Map getProductByOption(String name, Byte brandId, Byte isShow, int offset, int limit);

    Map getSkusByOption(Integer productId, int offset, int limit);


    List<Brand> getAllBrand();


    void delBrandsByIds(int[] ids);

    void saveBrand(Brand brand);


    List<Brand> getBrands(byte isDisplay);

    List<Type> getTypes(byte isDisplay);

    List<Feature> getAllFeature();

    /**
     * 查询 parentId is not null
     *
     * @return
     */
    List<Color> getColors();

    /**
     * 保存商品
     * 包存多条sku  颜色和尺码的笛卡尔积
     * @param product
     */
    void saveProduct(Product product);


    void saveImg(Img img);


    void updateProductIsDel(Integer productId);

    Img getImgByUrl(String url);


    void updateImgUrl(Img img);

    void delteImgById(Integer id);


    Employee getEmpByUsernameAndPassword(Employee employee);

    void updateSku(Sku sku);
}
