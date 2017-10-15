package com.thundersoft.yj.controller.front;

import com.thundersoft.yj.entity.*;
import com.thundersoft.yj.service.BackService;
import com.thundersoft.yj.service.FrontService;
import com.thundersoft.yj.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;


@Controller
@RequestMapping("/front/product")
public class ProductController_ {
    @Autowired
    FrontService frontService;
    @Autowired
    BackService backService;


  /*  @RequestMapping("/toList")
    public String list(@RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo, Map map) {
        Map data = frontService.getProductByOptionFront(pageNo, Constants.PAGE_SIZE);
        map.put("data", data);

        map.put("pageNo", pageNo);
        return "front/product/list";
    }*/

    @RequestMapping("/toList")
    public String list(Map map) {
        List<Brand> brands = backService.getBrands((byte) 1);
        List<Feature> features = backService.getAllFeature();
        List<Type> types = backService.getTypes((byte) 1);
        map.put("brands", brands);
        map.put("features", features);
        map.put("types", types);
        return "front/product/list";
    }


    @RequestMapping("/getProducts")
    @ResponseBody
    public Map getProducts(@RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo, Integer brandId, Integer typeId) {
        Map map = frontService.getProductByOptionFront(pageNo, Constants.PAGE_SIZE, brandId, typeId);
        return map;
    }

    @RequestMapping("/toProductDetail/{productId}")
    public String toProductDetail(@PathVariable("productId") Integer productId, Map map) {
        Product product = frontService.getProductById(productId);
        map.put("product", product);

        List<Img> imgs = frontService.getImgsByProductId(productId);
        map.put("imgs", imgs);

        Img firstImg = imgs.get(0);
        map.put("firstImg", firstImg);
        //查询所有的sku
        List<Sku> skus = frontService.getSkus(productId);
        map.put("skus",skus);
        //需要去重复颜色
        Set<Color> colors=new HashSet<>();
        for(Sku sku:skus){
            Color c = sku.getColor();
            colors.add(c);
        }
        map.put("colors",colors);
        return "front/product/productDetail";
    }
}
