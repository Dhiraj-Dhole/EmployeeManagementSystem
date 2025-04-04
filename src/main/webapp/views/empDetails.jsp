<%@ page import="com.EmployeeManager.creation.entities.Employee" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin - View Employees</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3f51b5;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .btn {
            background-color: #3f51b5;
            color: white;
            padding: 8px 16px;
            border: none;
            text-decoration: none;
            margin-top: 20px;
            display: inline-block;
            cursor: pointer;
        }
    </style>
</head>
<body>

<h1>All Employee Details</h1>

<table>
<thead>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Mobile</th>
    <th>Gender</th>
    <th>Address</th>
    <th>Username</th>
    <th>Password</th>

</tr>
</thead>
<tbody>

<%
    List<Employee> emp_list = (List<Employee>)request.getAttribute("emp_list_model");
    for(Employee emp:emp_list){
%>
<tr>
    <td><%=emp.getId()%></td>
    <td><%=emp.getEname()%></td>
    <td><%=emp.getEmail()%></td>
    <td><%=emp.getPhone()%></td>
    <td><%=emp.getGender()%></td>
    <td><%=emp.getAddress()%></td>
    <td><%=emp.getUname()%></td>
    <td><%=emp.getPwd()%></td>


</tr>
<%}%>
    </tbody>
    </table>

    <a href="adminDashboard" class="btn">Back to Dashboard</a>

    </body>
    </html>
