<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


    <meta charset="UTF-8">
    <title>Candidate Register</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="new.css">

<style>
    body{
       background:url(image/vreg.jpg);
        /*background-color: #222222;*/
        background-size: cover;
    }
    .register{
        border-radius: 5px;
        background:lite purple
        padding: 20px;
        width:420px;
        margin: auto;
        color: #fff;
        font-size: 16px;
        font-family: Verdana;
        margin-top: 100px;
        opacity: 0.6;
    }
    .register h1{
        text-align:left;
        margin: 0;
        padding:0 ;
    }
    .register input,select{
        padding: 12px 20px;
        margin: 8px 6px;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 18px;
        background-color: black;
        color: white;
        opacity: 0.9;
    }
    .register input[type=submit]{
        width: 100%;
        boarder:none;
        cursor: pointer;
    }
    #FirstName{
         width: 49%;
    }
    #LastName{
    width: 50%;
    }
    #email{
        width: 100%;
    }
    #ID{
        width: 60%
    }
    #password{
        width: 50%;
    }
    #Re-password{
        width:49%;
    }
    input[type=submit]:hover{
        color: #222222;
        transition: 0.6s;
    }
</style>

</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
       <a class="navbar-brand" href="index.html">Online Polling System</a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
       </button>

       <a class="navbar" href="http://localhost:8086/Polling_system/Login.jsp">Login</a>
       <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav mr-auto">
               <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       Register
                   </a>
                   <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                       <a class="dropdown-item" href="http://localhost:8086/Polling_system/Register.jsp">Register as voter</a>
                       <a class="dropdown-item" href="http://localhost:8086/Polling_system/Cregister.jsp">Register as Candidate</a>
                       <div class="dropdown-divider"></div>
                       <a class="dropdown-item" href="#">Contact us</a>
                   </div>
               </li>
           </ul>
       </div>
   </nav>
<div class="register">
    <form action="RegisterControl">
        <h1>Register Here</h1>
        <hr>
        <input type="text" name="FirstName" placeholder="Your First Name" required>
        <input type="text" name="LastName" placeholder="Your Last Name" required>
        <input type="text" name="email" placeholder="Your Email or Phone Number" required>
        <input type="text" name="ID" placeholder="Your ID" required>
        <input type="password" name="password" placeholder="New Password" required>
        <input type="password" name="Re-password" placeholder="Confirm password">
        <div class="date_of_birth">
           <span style="font-size: 16px">Date of birth</span><br>
                <input type="Date"/><br>
            <input type="radio" name="Gender" value="Male">Male
            <input type="radio" name="Gender" value="Female">Female<br>
            <input type="checkbox">I acccept Terms And Conditions
            <input type="submit"value="Register Now">
        </div>
    </form>
</div>
 <footer style="background-color: #ffe8a1">
       <div class="container">
           <div class="row">
               <div class="col-md-12 text-center">
                   <p style="padding-top: 8px;padding-bottom:-20px">Online Voting &copy; Copyright 2018.</p>
               </div>
           </div>
       </div>
   </footer>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	
</body>
</html>
</body>
</html>