package com.thundersoft.yj;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import org.apache.commons.io.FileUtils;
import org.junit.Test;

import java.io.File;
import java.io.IOException;

public class JerseyTest {
    @Test
    public void upload() throws IOException {
        /*Client client = new Client();
        //远程图片服务器webapp的url
        String url = "http://localhost:8090/imgweb/upload/hhhh.png";
        WebResource resource = client.resource(url);
        //要上传到远程服务器的图片
        String path = "C:\\Users\\dengry\\Desktop\\image-upload\\icons.png";  //磁盘
        //把图片读到内存
        byte[] bytes = FileUtils.readFileToByteArray(new File(path));
        //发送
        resource.put(String.class, bytes);*/
        System.out.println("ok");
    }
}
