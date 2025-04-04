<%@ page import="com.EmployeeManager.creation.entities.Employee" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Employee Management</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            background-color: #ecf0f1;
        }

        /* Sidebar */
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #2c3e50;
            color: white;
            padding-top: 20px;
            position: fixed;
        }
        .sidebar h2 {
            text-align: center;
            font-size: 20px;
        }
        .sidebar a {
            display: block;
            color: white;
            padding: 15px;
            text-decoration: none;
            font-size: 16px;
        }
        .sidebar a:hover {
            background-color: #34495e;
        }

        /* Main Content */
        .content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
        }

        /* Dashboard Cards */
        .dashboard-cards {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
        }
        .card {
            background: white;
            padding: 20px;
            border-radius: 5px;
            width: 200px;
            text-align: center;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }
        .card h3 {
            margin: 0;
            font-size: 22px;
            color: #2c3e50;
        }
        .card p {
            font-size: 16px;
            color: #7f8c8d;
        }

        /* Table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: white;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #2980b9;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Buttons */
        .btn {
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            color: white;
            font-size: 14px;
        }
        .btn-add {
            background-color: #27ae60;
        }
        .btn-show {
            background-color: #3498db;
        }
        .btn-edit {
            background-color: #f39c12;
        }
        .btn-delete {
            background-color: #c0392b;
        }
        .btn:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2>Admin Panel</h2>
    <a href="#">Dashboard</a>
    <a href="#">Employees</a>
    <a href="#">Add Employee</a>
    <a href="#">Settings</a>
    <a href="home">Logout</a>
</div>

<!-- Main Content -->
<div class="content">
    <h2>Employee Management Dashboard</h2>

    <!-- Dashboard Stats -->
    <div class="dashboard-cards">
        <div class="card">
            <h3> ${total}</h3>
            <p>Total Employees</p>
        </div>
        <div class="card">
            <h3>5</h3>
            <p>Departments</p>
        </div>
        <div class="card">
            <h3>10</h3>
            <p>New Hires</p>
        </div>
    </div>

    <!-- Action Buttons -->
    <button class="btn btn-show" onclick="location.href='empDetails' ">Show Employees</button>
    <button class="btn btn-add">Add Employee</button>

    <!-- Employee Table -->
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Actions</th>
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
            <td><%=emp.getGender()%></td>
            <td>
                <a href="">View Details</a>
            </td>
        </tr>
        <%}%>


        </tbody>
    </table>
</div>

</body>
</html>
