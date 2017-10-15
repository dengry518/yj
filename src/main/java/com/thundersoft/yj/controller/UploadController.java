package com.thundersoft.yj.controller;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.thundersoft.yj.entity.Img;
import com.thundersoft.yj.entity.Product;
import com.thundersoft.yj.service.BackService;
import com.thundersoft.yj.utils.Constants;
import com.thundersoft.yj.utils.ImageReponse;
import com.thundersoft.yj.utils.ListImageReponseJson;
import com.thundersoft.yj.utils.UploadResponseJson;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
public class UploadController {
    @Autowired
    BackService backService;


    //上传到本地服务器
    @RequestMapping("/upload")
    @ResponseBody
    public UploadResponseJson upload(MultipartFile file, HttpServletRequest request) {
        UploadResponseJson uploadResponseJson = new UploadResponseJson();
        String originalFilename = file.getOriginalFilename();//元素文件名称
        long size = file.getSize();
        String extension = FilenameUtils.getExtension(originalFilename);//获取文件的扩张名
        String path = request.getServletContext().getRealPath("/upload");
        //上传后文件是 yyyyMMddHHmmssSSS+3位随机数
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String fileName = simpleDateFormat.format(new Date());
        //随机三位数
        Random r = new Random();
        for (int i = 0; i < 3; i++) {
            fileName += r.nextInt(10);
        }
        fileName = fileName + "." + extension;
        String url = Constants.UPLOAD_NATIVE_PATH + fileName;
        File uploadDir = new File(path);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }
        if (size != 0) {
            File myfile = new File(uploadDir, fileName);
            try {
                file.transferTo(myfile);
                uploadResponseJson.setOriginal(fileName);//元素文件名称
                uploadResponseJson.setName(fileName);
                uploadResponseJson.setState("SUCCESS");
                uploadResponseJson.setType(extension);
                uploadResponseJson.setUrl(url);
                uploadResponseJson.setSize(size);
            } catch (IOException e) {
                e.printStackTrace();
                uploadResponseJson.setState("ERROR");
            }
        }
        return uploadResponseJson;
    }

    //上传到远程图片服务器
    @RequestMapping("/upload2")
    @ResponseBody
    public UploadResponseJson upload2(MultipartFile file, Integer uid) {
        UploadResponseJson uploadResponseJson = new UploadResponseJson();
        String originalFilename = file.getOriginalFilename();
        String extension = FilenameUtils.getExtension(originalFilename);//获取文件的扩张名
        //上传后文件名是 yyyyMMddHHmmssSSS+3位随机数
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String fileName = simpleDateFormat.format(new Date());
        //随机三位数
        Random r = new Random();
        for (int i = 0; i < 3; i++) {
            fileName += r.nextInt(10);
        }
        String path = Constants.UPLOAD_REMOTE_PATH + fileName + "." + extension;
        long size = file.getSize();

        Client client = new Client();
        WebResource resource = client.resource(path);
        if (size != 0) {
            try {
                resource.put(String.class, file.getBytes());
                uploadResponseJson.setOriginal(originalFilename);//元素文件名称
                uploadResponseJson.setName(fileName + "." + extension);
                uploadResponseJson.setState("SUCCESS");
                uploadResponseJson.setType(extension);
                uploadResponseJson.setUrl(path);
                uploadResponseJson.setSize(size);
            } catch (IOException e) {
                e.printStackTrace();
                uploadResponseJson.setState("ERROR");
            }
        }
        return uploadResponseJson;
    }


    //上传到远程图片服务器 同时保持img到数据库
    @RequestMapping("/uploads2")
    @ResponseBody
    public UploadResponseJson uploads2(MultipartFile file, Integer productId) {
        UploadResponseJson uploadResponseJson = new UploadResponseJson();
        String originalFilename = file.getOriginalFilename();
        String extension = FilenameUtils.getExtension(originalFilename);//获取文件的扩张名
        //上传后文件名是 yyyyMMddHHmmssSSS+3位随机数
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String fileName = simpleDateFormat.format(new Date());
        //随机三位数
        Random r = new Random();
        for (int i = 0; i < 3; i++) {
            fileName += r.nextInt(10);
        }
        String path = Constants.UPLOAD_REMOTE_PATH + fileName + "." + extension;
        long size = file.getSize();

        Client client = new Client();
        WebResource resource = client.resource(path);
        if (size != 0) {
            try {
                resource.put(String.class, file.getBytes());
                uploadResponseJson.setOriginal(originalFilename);//元素文件名称
                uploadResponseJson.setName(fileName);
                uploadResponseJson.setState("SUCCESS");
                uploadResponseJson.setType(extension);
                uploadResponseJson.setUrl(path);
                uploadResponseJson.setSize(size);
                //上传一张图片，保存到数据库
                Img img = new Img();
                img.setType(extension);
                img.setSize(size);
                img.setUrl(fileName);
                img.setProduct(new Product(productId));
                backService.saveImg(img);
                //修改product状态，表示该商品已经设置过多张图
            } catch (IOException e) {
                e.printStackTrace();
                uploadResponseJson.setState("ERROR");
            }
            backService.updateProductIsDel(productId);
        }

        return uploadResponseJson;
    }





    //上传到本地，同时保持img到数据库
    @RequestMapping("/uploads")
    @ResponseBody
    public UploadResponseJson uploads(MultipartFile file, Integer productId, HttpServletRequest request) {
        UploadResponseJson uploadResponseJson = new UploadResponseJson();
        String originalFilename = file.getOriginalFilename();//元素文件名称
        long size = file.getSize();
        String extension = FilenameUtils.getExtension(originalFilename);//获取文件的扩张名
        String path = request.getServletContext().getRealPath("/upload");
        //上传后文件是 yyyyMMddHHmmssSSS+3位随机数
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String fileName = simpleDateFormat.format(new Date());
        //随机三位数
        Random r = new Random();
        for (int i = 0; i < 3; i++) {
            fileName += r.nextInt(10);
        }
//        fileName = fileName + "." + extension;
        String url = Constants.UPLOAD_NATIVE_PATH + fileName;
        File uploadDir = new File(path);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }
        if (size != 0) {
            File myfile = new File(uploadDir, fileName + "." + extension);
            try {
                file.transferTo(myfile);
                uploadResponseJson.setOriginal(fileName);//元素文件名称
                uploadResponseJson.setName(fileName+ "." + extension);
                uploadResponseJson.setState("SUCCESS");
                uploadResponseJson.setType(extension);
                uploadResponseJson.setUrl(url);
                uploadResponseJson.setSize(size);

                //上传一张图片，保存到数据库
                Img img = new Img();
                img.setType(extension);
                img.setSize(size);
                img.setUrl(fileName);//保存到数据库中，不要后缀
                img.setProduct(new Product(productId));
                backService.saveImg(img);
            } catch (IOException e) {
                e.printStackTrace();
                uploadResponseJson.setState("ERROR");
            }
            backService.updateProductIsDel(productId);
        }
        return uploadResponseJson;
    }


    /**
     * ueditor  list上传的图片，本地服务器
     *
     * @param size
     * @param start
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping("/listimage")
    public ListImageReponseJson listimage(Integer size, Integer start, HttpSession session) {
        String path = session.getServletContext().getRealPath("/upload");
        File file = new File(path);
        String[] list = file.list();
        List<ImageReponse> imgUrls = new ArrayList();
        for (String s : list) {
            String imgUrl = "/upload/" + s;
            ImageReponse imageReponse = new ImageReponse(imgUrl);
            imgUrls.add(imageReponse);
        }
        ListImageReponseJson listImageReponseJson = new ListImageReponseJson();
        listImageReponseJson.setList(imgUrls);
        listImageReponseJson.setStart(start);
        listImageReponseJson.setTotal(list.length);
        listImageReponseJson.setState("SUCCESS");
        return listImageReponseJson;
    }
}
