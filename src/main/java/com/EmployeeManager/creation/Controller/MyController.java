package com.EmployeeManager.creation.Controller;
import com.EmployeeManager.creation.dao.EmployeeDao;
import com.EmployeeManager.creation.entities.Employee;
import com.EmployeeManager.creation.repo.EmployeeRepo;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import java.util.List;

@Controller
public class MyController {

    @Autowired
    private EmployeeDao empDao;
    private final EmployeeRepo employeeRepository;

    public MyController(EmployeeRepo employeeRepository) {
        this.employeeRepository = employeeRepository;
    }


    public long totalEmployees(Model model) {
        long totalEmployees = employeeRepository.count(); // Counts all employees from DB
        model.addAttribute("totalEmployees", totalEmployees);
        return totalEmployees;
    }

    
    // Home Page
    @RequestMapping("/home")
    public String home(){
        return "Home";
    }

    // Signup Page
    @RequestMapping("/signup")
    public String signup(){
        return "signup";
    }

    // Signin Page
    @GetMapping("/signin")
    public String signin() {
        return "signin";
    }

    @PostMapping("/saveData")
    public String saveData(@Valid Employee emp, Model model){

        empDao.saveData(emp);
        model.addAttribute("successmsg", "Data save successfully");
        return "signup";

    }

    @RequestMapping("/checksignin")
    public String checksignin(String role, String uname, String pwd, Model model){
        if(role.equals("admin")){
            if(uname.equals("dhiraj")){
                if(pwd.equals("3147")){
                    model.addAttribute("total", totalEmployees(model));

                    model.addAttribute("emp_list_model", empDao.getAllEmployeeDao());

                    return "adminDashboard";
                }
            }
        }
        else if(role.equals("employee")){

            Employee emp = empDao.checkSignIn(uname, pwd);
            model.addAttribute("emp", emp);
            return "userDashboard";
        }

        return "signin";
    }

    @RequestMapping("/empDetails")
    public String empDetails(Model model){
        model.addAttribute("emp_list_model", empDao.getAllEmployeeDao());
        return "empDetails";
    }

}
