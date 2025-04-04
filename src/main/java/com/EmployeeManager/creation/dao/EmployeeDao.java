package com.EmployeeManager.creation.dao;

import com.EmployeeManager.creation.entities.Employee;
import com.EmployeeManager.creation.repo.EmployeeRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeDao {

    @Autowired
    private EmployeeRepo empRepo;

    public Employee saveData(Employee emp) {
        return empRepo.save(emp);
    }

    public Employee checkSignIn(String uname , String pwd)
    {
        return empRepo.findByUnameAndPwd(uname, pwd);
    }

    public List<Employee> getAllEmployeeDao(){

        List<Employee> list = empRepo.findAll();
        return list;
    }


}
