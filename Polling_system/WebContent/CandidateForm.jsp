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
	<style>
	{box-sizing : border - box}

.container{
padding:18px;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 10px;
  margin: 5px 0 15px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type = password]:focus{
background-color:#ddd;
outline:none;
}

.submitbtn{
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
</style>
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
       <a class="navbar-brand" href="#">Online Polling System</a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
       </button>

       <a class="navbar" href="http://localhost:8086/Polling_system/Login.jsp">Log Out</a>
       <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav mr-auto">
               <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Add Candidates
                   </a>
                   <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                       <a class="dropdown-item" href="http://localhost:8086/Polling_system/Register.jsp">Register as voter</a>
                       <a class="dropdown-item" href="C:\Users\Vinz Nano\Desktop\Polling_system\WebContent\electionform.html">Create Election</a>
					    <a class="dropdown-item" href="http://localhost:8086/Polling_system/Cregister.jsp">View Results</a>
                       <div class="dropdown-divider"></div>
                       <a class="dropdown-item" href="#">Contact us</a>
                   </div>
               </li>
           </ul>
       </div>
   </nav>

   <div class="mainBackground" >
       
      
    <body>
	<form id = "election" action = "CandidateRegister" font-size="15px" method="post">

	<div class = "container">
	<h1 >Add Candidates</h1>
	<table>
		<tr>
		<td >
		<label for"name"><b>Candidate Name :</b></label>
		<input type="text" placeholder="Enter candidate name" name="name" required>
		</td>
		

		<td style=" padding-left: 120px;">
		<label for"Number"><b>Enter No:</b></label>
		<input type="text" placeholder="Enter candidate number" name="number" required>
		</td>

		</tr>
		<tr>
		<td>
		<label for"Age"><b>Age:</b></label>
		<input type="text" placeholder="candidate's Age" name="Age" required>
		</td>
		

		<td style=" padding-left: 120px;">
		<label for"PName"><b>Party Name:</b></label>
		<input type="text" placeholder="candidate's Age" name="Party" required>
		</td>
		</tr>
</table>




</br>
</br>


<button type="submit" class="Submitbtn">Submit</button>
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