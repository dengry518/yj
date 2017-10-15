package com.thundersoft.yj.controller.back;

import com.thundersoft.yj.entity.Img;
import com.thundersoft.yj.service.BackService;
import com.thundersoft.yj.service.FrontService;
import com.thundersoft.yj.service.cxf.HelloWorldImpl;
import com.thundersoft.yj.service.cxf.HelloWorldImplService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/back/img")
public class ImgController {
    @Autowired
    FrontService frontService;
    @Autowired
    BackService backService;

    @RequestMapping("/order/{productId}")
    public String order(@PathVariable("productId") Integer productId, Map map) {
        List<Img> imgs = frontService.getImgsByProductId(productId);
        map.put("imgs", imgs);
        return "back/img/order";
    }

   /* @RequestMapping("/updateName")
    @ResponseBody
    public Map updateName(String midName,String smallName, String original, HttpServletRequest request){
        String path = request.getSession().getServletContext().getRealPath("/upload/");
        Img img = backService.getImgByUrl(midName);
        File file = new File(path, midName + "." + img.getType());//找到了上传的图片
        try {
            FileUtils.copyFile(file, new File(path, original + "_mid." + img.getType()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        file.deleteOnExit();

        Img img2 = backService.getImgByUrl(smallName);
        File file2 = new File(path, smallName + "." + img2.getType());//找到了上传的图片
        try {
            FileUtils.copyFile(file2, new File(path, original + "_small." + img2.getType()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        file.deleteOnExit();
        backService.delteImgById(img.getId());
        backService.delteImgById(img2.getId());
        Map map=new HashMap();
        map.put("success",true);
        return map;
    }*/

   //修改远程图片服务器图片名，本地保存修改后的名称进数据库
    @RequestMapping("/updateName")
    @ResponseBody
    public Map updateName(String midName,String smallName, String original, HttpServletRequest request){
       /* String path = request.getSession().getServletContext().getRealPath("/upload/");
        Img img = backService.getImgByUrl(midName);
        File file = new File(path, midName + "." + img.getType());//找到了上传的图片
        try {
            FileUtils.copyFile(file, new File(path, original + "_mid." + img.getType()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        file.deleteOnExit();

        Img img2 = backService.getImgByUrl(smallName);
        File file2 = new File(path, smallName + "." + img2.getType());//找到了上传的图片
        try {
            FileUtils.copyFile(file2, new File(path, original + "_small." + img2.getType()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        file.deleteOnExit();*/
        Img img = backService.getImgByUrl(midName);
        Img img2 = backService.getImgByUrl(smallName);
        HelloWorldImplService helloWorldService=new HelloWorldImplService();
        HelloWorldImpl helloWorldImplPort = helloWorldService.getHelloWorldImplPort();

        helloWorldImplPort.updateImgName(midName + "." + img.getType(),smallName + "." + img2.getType(),original);
        backService.delteImgById(img.getId());
        backService.delteImgById(img2.getId());
        Map map=new HashMap();
        map.put("success",true);
        return map;
    }

}
