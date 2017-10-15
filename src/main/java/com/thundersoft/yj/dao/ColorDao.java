package com.thundersoft.yj.dao;

import com.thundersoft.yj.entity.Color;

import java.util.List;

public interface ColorDao {
    /**
     * 查询 parentId is not null
     * @return
     */
    List<Color> getColors();
}
