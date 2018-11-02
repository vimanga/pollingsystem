<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="test.DbManager" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>

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
    <title>Viewing Elections</title>
    <link rel="stylesheet" href="new.css">
    <style>
table {
    border-collapse: collapse;
    width: 80%;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover {background-color:black;}
div.scroll {
    
    width: 60%;
    height: 350px;
    overflow: auto;
}
</style>
</head>
<body>

<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1

		response.setHeader("Pragma", "no-cache");//HTTP 1.0;

		response.setHeader("Expires", "0");//proxies

		if (session.getAttribute("username") == null) {
			response.sendRedirect("index.html");
		}
	%>
	 <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
       <a class="navbar-brand" href="index.html">Online Polling System</a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
       </button>

       
       <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav mr-auto">
               <li class="nav-item dropdown">
                   <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       Admin
                   </a>
                   <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                       <a class="dropdown-item" href="admin.jsp">Admin page</a>
                       <a class="dropdown-item" href="ElectionForm.jsp">Election Form</a>
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
 <div class="scroll">
<table>
	
	<tr>
		<th style="color: #ffe8a1">ID Number</th>
		<th style="color: #ffe8a1">Election name</th>
		<th style="color: #ffe8a1">Election Date</th>
	</tr>
	
	<%
		DbManager db = new DbManager();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM election";
		
		try{
			conn = db.getConnection();
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next()){
				
				%>
				
					<tr>
						<td style="color: #F9E79F"><%out.print(rs.getString(1)); %></td>
						<td style="color: #F9E79F"><%out.print(rs.getString(2)); %></td>
						<td style="color: #F9E79F"><%out.print(rs.getString(3)); %></td>
						<td><a href="#" class="btn btn-primary btn-primary"
						style="width: 80%; margin: 7px" data-toggle="modal"
						data-target="#UpdateParty"><span
						class="glyphicon glyphicon-floppy-remove"></span>Update</a> </td>
						<td><a href="#" class="btn btn-primary btn-primary"
						style="width: 80%; margin: 7px" data-toggle="modal"
						data-target="#UpdateParty"><span
						class="glyphicon glyphicon-floppy-remove"></span>Delete</a> </td>
						
					</tr>
					
				
				<%
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
	%>
</table>
</div>
	</center>
	<br>
	<br>
		<br>
		<br>
		<br>
   </div>

	<div id="UpdateParty" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Update Party Details</h4>
					</div>
					<form action="updateElection" method="post">
						<div class="modal-body">

							<div class="input-group-lg">
								<input type="text" class=" loginInput form-control"
									placeholder="ID Number" name="idNo" required />
								<input type="text" class=" loginInput form-control"
									placeholder="Election name" name="eName" required />
								<input type="text" class=" loginInput form-control"
									placeholder="Election Date" name="eDate" required />
							</div>
							
						</div>
						<div class="modal-footer">
						
							<input type="submit" value="Submit" class=" btn  btn-primary ">
								
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
				
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Delete Party Details</h4>
					</div>
					<form action="Delete" method="post">
						<div class="modal-body">

							<div class="input-group-lg">
								<input type="text" class=" loginInput form-control"
									placeholder="ID Number" name="DidNo" required />
							</div>
							
						</div>
						<div class="modal-footer">
						
							<input type="submit" value="Delete" class=" btn  btn-primary ">
								
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>

			</div>
		
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