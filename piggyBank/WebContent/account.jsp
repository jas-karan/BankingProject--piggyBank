<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%

java.util.Random r = new java.util.Random();
int accNo = r.nextInt(10000000); 

%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Piggy Bank- Create account</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&display=swap" rel="stylesheet">
<style>
	<style>
	html {
    box-sizing: border-box;
    font-family: 'open sans', sans-serif;
	}
	body {
    background-color: #164a41;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
	}
	.table {
    background-color: white;
    border-radius: 10px;
    padding: 15px 25px;
    width: 100%;
    max-width: 960px;
    display: flex;
    flex-direction: column;
    text-align: center;
    text-transform: uppercase;
	align-items:center;
	}
	
	.header21{
		margin: 12px;
		width: 100%;
		
	}

	.form{
		padding: 20px;
		border: none;

	}
	input {
			 border: none;
 			 background-color : #d1d1d1;
			 margin:12px 0;
			 padding: 10px 2px;
			 width:70%;
			}
	.form-button {
			border: 1px solid black;
			color: black;
			display: block;
			border-radius: 10px;
			padding: 5px 15px;
			text-decoration: none;
			margin:auto;
			font-size: 20px;
			}
	a.form-button{
			margin-top:10px;
			background-color : #d1d1d1;
			width:62.5%;
			}
	   label{
			display:block;
			}
	
		.form-button:hover,
		.form-button:focus {
		    background-color: #4d774e;
		}
		option{
		font-family: 'Roboto Mono', monospace;
		font-size: 12px;
		background-color : #d1d1d1; 
	   }
	   select{
	   		margin:20px;
	   }
	footer{
			border:1px solid black;
			padding:20px;
			background: url("head.jpg");
		  color:white;
			background-size: 100% 200px;
			width:100%;
			}
	@media (min-width:900px) {
		.header21{
			width:70%;
			border: 2px solid black;	
		}
}
<</style>
</head>
<body>
	<div class="table">
		<div class="header21 form">
					<h2>Register Here</h2>
					<form action="doaccount.jsp" method="post">
								<label for="username">Account Holder Name: </label>
								<input type="text" name="uname" id="username" readonly value="<%= (String)session.getAttribute("cust_name")%>">
						
								<label for="acc_no">Account Number: </label>
								<input type="text" id="acc_no" name="acc_no" readonly value="<%=accNo%>">
						
								<label for="acc_type">Account Type: </label>
								<select name="acc_type" id="acc_type">
		 							  <option value="CURRENT">Current Account</option>
									  <option value="SAVING"> Saving Account</option>
		 						 </select>
						
								<input type="submit" class="form-button" value="Create Account">
								<a href="main.jsp" class="form-button">Main Page</a>
					</form>
			</div>
		<footer>
			All rights Reserved @piggybank
		</footer>
	</div>

</body>
</html>