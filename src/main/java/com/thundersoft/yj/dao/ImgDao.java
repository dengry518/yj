package com.thundersoft.yj.dao;

import com.thundersoft.yj.entity.Img;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ImgDao {
    void saveImg(Img img);

    List<Img> getImgsByProductId(@Param("productId") Integer productId);

    Img getImgByUrl(@Param("url") String url);

    void updateImgUrl(Img img);

    void delteImgById(@Param("id") Integer id);
}
