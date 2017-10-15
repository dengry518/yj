package com.thundersoft.yj.dao;

import com.thundersoft.yj.entity.Brand;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BrandDao {
    List<Brand> getBrands(@Param("name") String name, @Param("isDisplay") Byte isDisplay, @Param("begin") int begin, @Param("pageSize") int pageSize);

    int getTotal(@Param("name") String name, @Param("isDisplay") Byte isDisplay);

    List<Brand> getAllBrand();

    List<Brand> getBrandsByIsDisplay(@Param("isDisplay") byte isDisplay);

    void delById(@Param("id") Integer id);

    void delByIds(@Param("ids") int[] ids);

    void saveBrand(Brand brand);
}
