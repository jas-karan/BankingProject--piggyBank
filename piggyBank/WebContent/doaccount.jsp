<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="piggyBank.*"%>
    
<%

String uname = request.getParameter("uname");
int accno = Integer.parseInt(request.getParameter("acc_no"));
String acc_type = request.getParameter("acc_type");
int amount = 0;
String sql = "SELECT uname, acc_type FROM acc_details WHERE uname ='"+uname+"' AND acc_type = '"+acc_type+"'";
//System.out.println(sql);
boolean ck = commonClass.checkUser(sql);
if(ck == true ){
	response.sendRedirect("already_acc.jsp");
	
}else {
	sql = "INSERT INTO acc_details VALUES ("+accno+",'"+uname+"','"+acc_type+"','"+amount+"')";
	int update = commonClass.update(sql);
}

 

%>

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
	margin-left: 300px;
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
		margin-left: 40px;
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
		padding-right: 30px;
		padding-left: 10px;
		background-color: #376C39;
		margin: 5px;
		font-family: 'Roboto Mono', monospace;
	}
	#accNo{
		font-size: 20px;
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
		
		<tr>	</tr>
		<tr></tr>
		<tr>
			<td id="op">
				<div>
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
				</div>
				
			</td>
			
			<th id="about">
				<div>
					Your account is successfully created. and Account No. is <span id="accNo"><%=accno%></span>.<br/>
					To Deposit Amount in Your Account <a href="deposit.jsp">Click Here</a><br/>
					To Withdraw From Account <a href="withdraw.jsp">Click Here</a>
				</div>
			</th>
		</tr>
	</table>



</body>
</html>