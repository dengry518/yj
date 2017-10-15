package com.thundersoft.yj.controller.back;

import com.thundersoft.yj.entity.Employee;
import com.thundersoft.yj.service.BackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/back/emp")
public class EmpController {
    @Autowired
    BackService backService;

    @RequestMapping("/login")
    public String login(Employee employee, HttpSession session) {
        Employee emp = backService.getEmpByUsernameAndPassword(employee);
        if (emp == null) {
            return "back/login";
        } else {
            session.setAttribute("emp", emp);
            return "back/main";
        }

    }
    @RequestMapping("/exit")
    public String exit(HttpSession session){
        session.invalidate();
        return "back/login";
    }
}
