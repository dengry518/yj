package com.thundersoft.yj.controller.back;

import com.thundersoft.yj.entity.Brand;
import com.thundersoft.yj.service.BackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/back/brand")
public class BrandController {
    @Autowired
    BackService backService;

    @RequestMapping("/toList")
    public String toList() {
        return "back/brand/list";
    }

    @RequestMapping("/toAdd")
    public String toAdd() {
        return "back/brand/add";
    }

    @RequestMapping("/add")
    public String add(Brand brand) {
        backService.saveBrand(brand);
        return "redirect:/back/brand/toList";
    }

    @RequestMapping("/list")
    @ResponseBody
    public Map list(String name, Byte isDisplay, int offset, int limit) {
        return backService.getBrandsByOptions(name, isDisplay, offset, limit);
    }


    @RequestMapping("/del")
    @ResponseBody
    public Map del(int[] ids) {
        Map map = new HashMap();
        try {
            backService.delBrandsByIds(ids);
            map.put("success", true);
        } catch (Exception e) {
            map.put("success", false);
        }
        return map;
    }

}
