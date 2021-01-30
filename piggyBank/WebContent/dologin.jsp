<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import = "piggyBank.*"%>
    
<%

String uname = request.getParameter("username");
String password = request.getParameter("password");
String sql = "SELECT uname, pass FROM user_details WHERE uname ='"+uname+"' AND pass = '"+password+"'";

boolean c = commonClass.checkUser(sql);
if(c == true ){
	session.setAttribute("cust_name",uname);
}else {
	response.sendRedirect("nouser.html");
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Piggy Bank- Register</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&display=swap" rel="stylesheet">
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
	.header{
	 	background: url("head.jpg");
		font-size: 50px;
		font-family: 'Inconsolata', monospace;
		text-decoration:underline;
		letter-spacing:10px;
		color: white;
		padding: 15px 15px;
		background-size: 100% 200px;
		width:100%;
	}
	
	.header21{
		margin: 12px;
		text-align:center;
	}
	li{
		list-style-type: none;
		font-size:25px;
		margin-top: 5px;
	}
	
	
	.form-button {
			border: 1px solid black;
			color: black;
			display: block;
			border-radius: 10px;
			padding: 5px 15px;
			text-decoration: none;
			margin:auto;
			}
	a{
		text-decoration: none;
		color:white;
		font-size:15px;
		font-family: 'Roboto Mono', monospace;
	}
	a.form-button{
			margin-top:10px;
			background-color : #d1d1d1;
			width:62.5%;
			}
	
	.form-button:hover,
		.form-button:focus {
		    background-color: #4d774e;
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
    .header2 {
        flex-direction: row;
    }
		.header21{
			width:50%;
		}

}
</style>

</head>
<body>
	

<div class="table">
			<div class="header">
				Piggy Bank
			</div>
			<div class="header21 ">
					<h2>Account Operations</h2>
 					<ul>
    					<li><a href="main.jsp" class="form-button" >Welcome,&nbsp;<%= uname %></a></li>
 			    		<li><a href="account.jsp" class="form-button" >Create Account</a></li>
						<li><a href="deposit.jsp" class="form-button" >Deposit</a></li>
  					    <li><a href="withdraw.jsp" class="form-button" >Do Withdraw</a></li>
  						<li><a href="getbalance.jsp" class="form-button" >Get Balance</a></li>
						<li><a href="transfer.jsp" class="form-button" >Transfer Amount</a></li>
						<li><a href="viewreports.jsp" class="form-button" >View Report</a></li>
						<li><a href="logout.jsp" class="form-button" >LogOut</a></li>
 		    	   </ul>
			</div>
		<footer>
			All rights Reserved @piggybank
		</footer>
	</div>





	
</body>
</html>