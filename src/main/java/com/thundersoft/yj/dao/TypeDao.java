package com.thundersoft.yj.dao;


import com.thundersoft.yj.entity.Type;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TypeDao {
    List<Type> getAllType();

    List<Type> getTypes(@Param("isDisplay") byte isDisplay);
}
