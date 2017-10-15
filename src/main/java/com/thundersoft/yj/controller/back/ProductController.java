package com.thundersoft.yj.controller.back;

import com.thundersoft.yj.entity.*;
import com.thundersoft.yj.service.BackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/back/product")
public class ProductController {
    @Autowired
    BackService backService;

    @RequestMapping("/toList")
    public String toList(Map map) {
        List<Brand> brands = backService.getAllBrand();
        map.put("brands", brands);
        return "back/product/list";
    }

    @RequestMapping("/list")
    @ResponseBody
    public Map list(String name, Byte brandId, Byte isShow, int offset, int limit) {
        return backService.getProductByOption(name, brandId, isShow, offset, limit);
    }

    /**
     * 商品类型(is_display=1)
     * 商品品牌(is_display=1)
     * 颜色(parent_id is not NULL)
     * 材质：所有
     *
     * @param map
     * @return
     */
    @RequestMapping("/toAdd")
    public String toAdd(Map map) {
        List<Brand> brands = backService.getBrands((byte) 1);
        map.put("brands", brands);
        List<Type> types = backService.getTypes((byte) 1);
        map.put("types", types);
        List<Feature> features = backService.getAllFeature();
        map.put("features", features);
        List<Color> colors = backService.getColors();
        map.put("colors", colors);
        return "back/product/add";
    }

    @RequestMapping("/add")
    public String add(Product product) {
        backService.saveProduct(product);
        return "redirect:/back/product/toList";
    }

    @RequestMapping("/uploadPics/{productId}")
    public String uploadPics(@PathVariable("productId") Integer productId,Map map) {
        map.put("productId",productId);
        return "/back/product/upload";
    }
}
