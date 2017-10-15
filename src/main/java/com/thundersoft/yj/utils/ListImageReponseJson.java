package com.thundersoft.yj.utils;

import java.util.List;

/**
 * Created by dengry on 2017/1/21.
 */
public class ListImageReponseJson {
    private String state;
    private Integer start;
    private Integer total;
    private List list;

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
