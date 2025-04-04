package com.EmployeeManager.creation.repo;

import com.EmployeeManager.creation.entities.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepo extends JpaRepository<Employee, Integer> {
    public Employee findByUnameAndPwd(String uname, String pwd);

    public Employee findByEmail(String email);
}
