<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<title>Please login</title>
</head>
<body>
	
	  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
       <a class="navbar-brand" href="index.html">Online Polling System</a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
       </button>
		<a class="navbar" href="Login.jsp">Login</a>
       <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav mr-auto">
               <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       Register
                   </a>
                   <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                       <a class="dropdown-item" href="Register.jsp">Register as voter</a>
                       <div class="dropdown-divider"></div>
                       <a class="dropdown-item" href="#">Contact us</a>
                   </div>
               </li>
           </ul>
       </div>
   </nav>

   <div class="mainBackground">'
       <br><br>
       <br>
       <br>
       <br>
       <center>
           <form action="Login" method ="post">
           <div class="rowlg">
           		<div class="col-25"><label for="uname">Username :</label></div>  
           		<div class="col-75"><input type="text" name="uname" placeholder="Enter Username"><br></div>
           </div>	
           <div class="rowlg">
           		<div class="col-25"><label for="pass">Password :</label></div>
           		<div class="col-75"><input type="password" name="pass" placeholder="Enter Password"><br></div>
           </div>
           <div class="rowlg">
           		<input type="submit" class="buttonlg" value="Login">
           </div>
           </form>
       </center>
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