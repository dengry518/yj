package com.thundersoft.yj.service;

import com.thundersoft.yj.entity.Employee;
//import com.thundersoft.yj.service.weather.ArrayOfString;
//import com.thundersoft.yj.service.weather.WeatherWebService;
//import com.thundersoft.yj.service.weather.WeatherWebServiceSoap;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class ServiceTest {
    @Autowired
    BackService backService;

    @Test
    public void getEmpByUsernameAndPassword() {
        Employee employee = new Employee();
        employee.setUsername("admin");
        employee.setPassword("123");
        Employee emp = backService.getEmpByUsernameAndPassword(employee);
        System.out.println(emp);
    }



//    @Test
//    public void weather() {
//        WeatherWebService weatherWebService = new WeatherWebService();
//        WeatherWebServiceSoap weatherWebServiceSoap = weatherWebService.getWeatherWebServiceSoap();
//        ArrayOfString a = weatherWebServiceSoap.getWeatherbyCityName("成都");
//        List<String> weatList = a.getString();
//        for (String temp : weatList) {
//            System.out.println(temp);
//        }
//    }
}
