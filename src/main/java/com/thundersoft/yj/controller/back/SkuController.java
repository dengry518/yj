package com.thundersoft.yj.controller.back;

import com.thundersoft.yj.entity.Sku;
import com.thundersoft.yj.service.BackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/back/sku")
public class SkuController {
    @Autowired
    BackService backService;


    @RequestMapping("/toList/{productId}")
    public String toList(@PathVariable("productId") Integer productId, Map map) {
        map.put("productId", productId);
        return "back/sku/list";
    }

    @RequestMapping("/list")
    @ResponseBody
    public Map list(int productId, int offset, int limit) {
        return backService.getSkusByOption(productId, offset, limit);
    }

    @RequestMapping("/update")
    @ResponseBody
    public Map update(Sku sku) {
        Map map = new HashMap();
        try {
            backService.updateSku(sku);
            map.put("success", true);
        } catch (Exception e) {
            map.put("success", false);
        }
        return map;
    }
}
