package com.thundersoft.yj.dao;

import com.thundersoft.yj.entity.Employee;

public interface EmployeeDao {
    Employee getEmpByUsernameAndPassword(Employee employee);
}
