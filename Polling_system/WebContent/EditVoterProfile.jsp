<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="test.DbManager" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Edit Form</title>
    <style>
    body{
        background-color: #e8f3f8;
    }
    h1{
        text-align: center;
        font-size: 50px;
        color: steelblue;
    }
    form{
        margin: 20px auto;
        width:320px;
        color: steelblue;
    }
    input{
        padding: 10px;
        font-size: inherit;
    }
    input[type="text"]{
        display: block;
        margin-bottom: 25px;
        width: 100%;
        border: 2px solid steelblue;
    }

    input[type="submit"]{
        display: block;
        margin-bottom: 25px;
        width: 50%;
       background: skyblue;
    }
   
    </style>

</head>
<body>
    <h1>Edit Profile</h1>
    <Form method="POST" action="EditProfile">
    
   
			
				
    <tr>First Name :
        <input type="text" placeholder="First Name" name="firstname" value="<%=session.getAttribute("firstname")%>">
    </tr>
    <tr>Last Name :
        <input type="text" placeholder="Last Name" name="lastname"value="<%=session.getAttribute("lastname")%>">
    </tr>
    <tr>Email :
        <input type="text" placeholder="Email" name="email" value="<%=session.getAttribute("email")%>">
    </tr>
    <tr>NIC :   <%=session.getAttribute("NIC") %><br>
       <br>
        <input type="hidden" placeholder="NIC" name="nic" value="<%=session.getAttribute("NIC")%>">
    </tr>
    <tr>Password :
        <input type="text" placeholder="Password" name="password" value="<%=session.getAttribute("password")%>">
    </tr>

		

    <div>
        <input type="submit" value="Update Profile">
        <input type="submit" value="Delete Profile">
    </div>


    </Form>
</body>
</html>