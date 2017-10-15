1.springmvc+spring
2.mybatis

整合
a.依赖
 <dependency>
            <groupId>org.mybatis</groupId>
            <artifactId>mybatis-spring</artifactId>
            <version>1.3.1</version>
 </dependency>
b.
使UserDao受IOC容器的管理
<bean class="org.mybatis.spring.mapper.MapperScannerConfigurer">
        <property name="basePackage" value="dao"/>
</bean>




webupload使用注意:
webupload不管上传样式，需要自己写，我是用的它的
1.res/webuploader-0.1.5/image-upload/upload.js
server:'/upload'    /upload是后台的url路径
fileNumLimit:5       配置上传图片数目
2.res/webuploader-0.1.5/webuploader.js
fileVal:'file'       file是和后台交互的name
3.webupload上传后的响应有特定的格式

4.ajax上传后响应的json格式数据,在页面设置id为imgUrl的input
<input type="hidden"  value="" id="imgUrl">
在 res/webuploader-0.1.5/image-upload/upload.js中
uploader.on("uploadAccept"..) 上传成功后，将服务器响应的信息写入隐藏域，保存进数据库
$('#imgUrl').val(data.name);


使用jersey上传图片到专用服务器:
1.引入
 <dependency>
            <groupId>com.sun.jersey</groupId>
            <artifactId>jersey-client</artifactId>
            <version>1.19.2</version>
        </dependency>
2.修改远程tomcat的web.xml 中的<servlet>节点
	<init-param>
            <param-name>readonly</param-name>
            <param-value>false</param-value>
     </init-param>



ueditor
a.注意要引入几个jar包，参考官网
 <dependency>
            <groupId>commons-codec</groupId>
            <artifactId>commons-codec</artifactId>
            <version>1.10</version>
        </dependency>
        <dependency>
            <groupId>org.json</groupId>
            <artifactId>json</artifactId>
            <version>20170516</version>
        </dependency>

        <dependency>
                    <groupId>com.baidu</groupId>
                    <artifactId>ueditor</artifactId>
                    <version>1.1.2</version>
         </dependency>
                最后一个jar包需要手动打包入本地仓库
 b.将从官网下载的ueditor1_4_3_3-utf8-jsp.zip解压放入工程


 b.<script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
   <script type="text/javascript" src="/ueditor/ueditor.all.js"></script>
 c.页面dom:
  <script id="desc" name="description" type="text/plain"></script>

 d. 注意ueditor/jsp/config.json中

     "imageActionName": "uploadimage", /* 执行上传图片的action名称 */
     "imageFieldName": "file", /* 提交的图片表单名称 */

     1.其中的file为后台实现上传的入参名
     2.uploadimage上传图片的action名，参考product/add.jsp 中的：
       if(action=='uploadimage'||action=='uploadscrawl'){
                     return '/back/upload';
                 }else{
                     return this._bkGetActionUrl.call(this,action);
                 }
 e.修改google浏览器上传图片慢的问题
 http://blog.csdn.net/lhtzbj12/article/details/53673601


由cxf生产客户端代码(wsdl2java)
 1.官网下载apache-cxf-3.2.0.zip,解压
 2.
 wsdl2java -encoding utf-8 -p com.thundersoft.yj.service.cxf  http://localhost:8090/imgweb/services/HelloWorld?wsdl

 使用本地wsdl文件
 wsdl2java -encoding utf-8 -p com.thundersoft.yj.service.weather -client d:/WeatherWebService.wsdl