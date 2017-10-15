package com.thundersoft.yj.service;

import com.thundersoft.yj.dao.*;
import com.thundersoft.yj.entity.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BackServiceImpl implements BackService {
    @Autowired
    BrandDao brandDao;
    @Autowired
    ProductDao productDao;
    @Autowired
    TypeDao typeDao;
    @Autowired
    FeatureDao featureDao;
    @Autowired
    ColorDao colorDao;
    @Autowired
    ImgDao imgDao;
    @Autowired
    SkuDao skuDao;
    @Autowired
    EmployeeDao employeeDao;

    @Override
    public Map getBrandsByOptions(String name, Byte isDisplay, int offset, int limit) {
        List<Brand> brands = brandDao.getBrands(name, isDisplay, offset, limit);
        int total = brandDao.getTotal(name, isDisplay);//总记录数
        Map map = new HashMap();
        map.put("total", total);
        map.put("rows", brands);
        return map;
    }

    @Override
    public Map getProductByOption(String name, Byte brandId, Byte isShow, int offset, int limit) {
        List<Product> productVOS = productDao.getProducts(name, brandId, isShow, offset, limit);
        int total = productDao.getTotal(name, brandId, isShow);
        Map map = new HashMap();
        map.put("total", total);
        map.put("rows", productVOS);
        return map;
    }

    @Override
    public Map getSkusByOption(Integer productId, int offset, int limit) {
        List<Sku> skus = skuDao.getSkusByProductId(productId, offset, limit);
        int total = skuDao.getTotal(productId);
        Map map = new HashMap();
        map.put("total", total);
        map.put("rows", skus);
        return map;
    }


    @Override
    public List<Brand> getAllBrand() {
        return brandDao.getAllBrand();
    }

    @Override
    public void delBrandsByIds(int[] ids) {
//        for (int id : ids) {
//            brandDao.delById(id);
//        }
        brandDao.delByIds(ids);
    }

    @Override
    public void saveBrand(Brand brand) {
        brandDao.saveBrand(brand);
    }

    @Override
    public List<Brand> getBrands(byte isDisplay) {
        return brandDao.getBrandsByIsDisplay(isDisplay);
    }

    @Override
    public List<Type> getTypes(byte isDisplay) {
        return typeDao.getTypes(isDisplay);
    }

    @Override
    public List<Feature> getAllFeature() {
        return featureDao.getAllFeature();
    }

    @Override
    public List<Color> getColors() {
        return colorDao.getColors();
    }

    @Override
    public void saveProduct(Product product) {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String no = simpleDateFormat.format(date);
        product.setNo(no);
        //添加时间
        product.setCreateTime(date);
        //添加的商品默认是下架  0表示下架  1表示上架
        product.setIsShow((byte) 0);
        productDao.saveProduct(product);


        // 保存sku
        String colors = product.getColor();
        String sizes = product.getSize();
        String[] colorIds = colors.split(",");
        String[] ss = sizes.split(",");
        for (String c : colorIds) {
            for (String s : ss) {
                Sku sku = new Sku();
                sku.setProduct(product);
                sku.setDeliveFee(10.0);//运费
                sku.setSkuPrice(product.getPrice());//售价
                sku.setMarketPrice(product.getPrice());//市场价
                sku.setStockInventory(0);//库存
                sku.setSkuUpperLimit(0);//购买限制
                sku.setCreateTime(date);//添加时间
                sku.setLastStatus(1);//是否是最新
                sku.setSkuType(1);//是否是赠品还是普通商品
                sku.setSales(0);//销量

                sku.setColor(new Color(Integer.parseInt(c)));
                sku.setSize(s);
                skuDao.saveSku(sku);
            }
        }
    }


    @Override
    public void saveImg(Img img) {
        imgDao.saveImg(img);
    }

    @Override
    public void updateProductIsDel(Integer productId) {
        productDao.updateProductIsDel(productId);
    }

    @Override
    public Img getImgByUrl(String url) {
        return imgDao.getImgByUrl(url);
    }

    @Override
    public void updateImgUrl(Img img) {
        imgDao.updateImgUrl(img);
    }

    @Override
    public void delteImgById(Integer id) {
        imgDao.delteImgById(id);
    }

    @Override
    public Employee getEmpByUsernameAndPassword(Employee employee) {
        return employeeDao.getEmpByUsernameAndPassword(employee);
    }

    @Override
    public void updateSku(Sku sku) {
        skuDao.updateSku(sku);
    }
}
