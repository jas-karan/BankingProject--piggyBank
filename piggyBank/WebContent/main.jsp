<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Piggy Bank</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&display=swap" rel="stylesheet">
<style>
	#header{
	    padding-bottom:40px;
	    padding-top:50px;
		background: url("head.jpg");
		background-size: 100% 200px;
		font-size: 50px;
		text-align:right;
		font-family: 'Inconsolata', monospace;
		
		padding-right:30px;
		text-decoration:underline;
		letter-spacing:10px;
		color: white;
		margin-bottom: 50px;
	}
	
	#header2{
		color:white;
		padding-left:200px;
		
	}
	#about{
		color:white;
	background-color: #4d774e;
	padding:10px;
	}
	img{
		width:200px;
	}
	#outer{
		background-color: #4d774e;
		padding-right: 30px;
		padding-left: 30px;
	}
	#head{
		
		width:100%;
		color: white;
	}
	#inner{
		padding: 40px;
		border:none;
		background-color: white;
	}
	
	body{
		margin:50px;
		background-color: #164a41;
	}
	label{
		color: black;
	}
	input {
			 border: none;
 			 background-color : #d1d1d1; 
			}
	a{
		text-decoration: none;
		color:white;
		font-size:15px;
		font-family: 'Roboto Mono', monospace;
	}
	a:visited{
		color:white;
	}
	#op{
		
		padding-right: 60px;
		padding-left: 60px;
		background-color: #4d774e;
	}
	
	li{
		list-style-type: none;
		font-size:15px;
		padding-right: 30px;
		padding-left: 10px;
		background-color: #376C39;
		margin: 5px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th id="header" colspan="2" >
				Piggy Bank
			</th>
		</tr>
		
		<tr>
		</tr>
		<tr></tr>
		
		<tr>
			<td id="op">
				<div>
 				 	<div style="padding-left:50px" id="head">Account Operations</div>
 						 <ul>
    						<li><a href="main.jsp">Welcome,&nbsp;<%= session.getAttribute("cust_name") %></a></li>
 				    		<li><a href="account.jsp">Create Account</a></li>
							<li><a href="deposit.jsp">Deposit</a></li>
  						    <li><a href="withdraw.jsp">Do Withdraw</a></li>
  							<li><a href="getbalance.jsp">Get Balance</a></li>
							<li><a href="transfer.jsp">Transfer Amount</a></li>
							<li><a href="viewreports.jsp">View Report</a></li>
							<li><a href="logout.jsp">LogOut</a></li>
 						 </ul>
 					 <div>&nbsp;</div>
				</div>
				
			</td>
			
			<th id="about">
				<p>The central concept of the application is to allow the  customer(s) to service virtually using the Internet with out going to bank and 
				 allow customers to open new account, withdraw, deposit,  close and  getting balance using this banking service.&nbsp; 
				  The information pertaining to the customers stores on an RDBMS at the  server side (BANK).&nbsp;
				   The Bank services  the customers according to the customer&rsquo;s intention and it updates and backups  of each customer transaction accordingly
				 .</p>
			</th>
		</tr>
	</table>



</body>
</html>