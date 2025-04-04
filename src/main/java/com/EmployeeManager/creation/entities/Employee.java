package com.EmployeeManager.creation.entities;


import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;


@Entity
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @NotBlank(message = "Name can't be blank")
    @Pattern(regexp = "^[A-Za-z ]+$", message = "Not Valid Name")
    private String ename;

    @NotBlank(message = "Name can't be blank")
    @Email
    @Column(unique = true)
    private String email;


    private String phone;
    private String gender;
    private String address;

    @Column(unique = true)
    private String uname;
    private String pwd;

    public Employee(int id, String ename, String email, String phone, String gender, String address, String uname, String pwd) {
        this.id = id;
        this.ename = ename;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.address = address;
        this.uname = uname;
        this.pwd = pwd;
    }

    public Employee() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", name='" + ename + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", gender='" + gender + '\'' +
                ", address='" + address + '\'' +
                ", uname='" + uname + '\'' +
                ", password='" + pwd + '\'' +
                '}';
    }
}
