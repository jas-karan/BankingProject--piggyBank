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
<title>Piggy Bank- Create account</title>
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
		
	
		color: white;
	}
	#inner{
		padding: 40px;
		border:none;
		background-color: white;
		margin-left: 300px;
	}
	
	body{
		margin:50px;
		background-color: #164a41;
	}
	label{
		color: black;
		font-family: 'Roboto Mono', monospace;
		font-size: 17px;
	}
	input {
			margin: 5px;
			 border: none;
 			 background-color : #d1d1d1; 
			}
	a{
		text-decoration: none;
		color:white;
	}
	a:visited{
		color:white;
	}
	#op{
		
		padding-right: 30px;
		padding-left: 30px;
		background-color: #4d774e;
	}
	
	li{
		list-style-type: none;
		font-size:15px;
		
		padding-left: 10px;
		background-color: #376C39;
		margin: 5px;
		font-family: 'Roboto Mono', monospace;
	}
</style>
</head>
<body>
	<table style="width:100%">
		<tr>
			<th id="header" colspan="2" >
				Piggy Bank
			</th>
		</tr>
		
		<tr>
		</tr><tr></tr>
		
		<tr>
			<td id="op">
				
 				 	<div style="padding-left:50px" id="head">Account Operations</div>
 						 <ul>
    						<li><a href="main.jsp">Welcome,&nbsp;<%= session.getAttribute("cust_name") %></a></li>
 				    		
							<li><a href="deposit.jsp">Deposit</a></li>
  						    <li><a href="withdraw.jsp">Do Withdraw</a></li>
  							<li><a href="getbalance.jsp">Get Balance</a></li>
							<li><a href="transfer.jsp">Transfer Amount</a></li>
							<li><a href="viewreports.jsp">View Report</a></li>
							<li><a href="logout.jsp">LogOut</a></li>
 						 </ul>
 					 <div>&nbsp;</div>
				
			</td>
			
			<td style="background-color: #4d774e">
				
					<div style="color:white; text-align:center">Create Account Here</div>
					<form action="doaccount.jsp" method="post">
						<table id="inner">
							<tr><td>
								<label for="username">Account Holder Name: </label>
								<input type="text" name="uname" id="username" value="<%= (String)session.getAttribute("cust_name")%>">
							</td></tr>
							<tr><td>
								<label for="acc_no">Account Number: </label>
								<input type="text" id="acc_no" name="acc_no" value="<%=accNo%>">
							</td></tr>
							
							<tr><td>
								<label for="acc_type">Account Type: </label>
								<select name="acc_type" id="acc_type">
		 							  <option value="CURRENT">Current Account</option>
									  <option value="SAVING"> Saving Account</option>
		 						 </select>
							</td></tr>
							<tr><td>
								<input type="submit" style="background-color: #4d774e; color: white; font-size: 15px; border:none" value="Create Account">
							</td></tr>
						</table>
					</form>
				
			</td>
		</tr>
	</table>


	
</body>
</html>