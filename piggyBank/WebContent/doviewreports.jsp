<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="piggyBank.*, java.sql.*, java.util.*, java.io.*"%>
    
    
<%
//java Code

String uname = (String)session.getAttribute("cust_name");
String acc = (request.getParameter("acc_type"));
String sql = "SELECT operation,amt,timing FROM tx_details WHERE uname=? and acc_no=?";
Connection c = commonClass.prepareConn();
PreparedStatement st = c.prepareStatement(sql);
st.setString(1,uname);
st.setString(2,acc);
ResultSet rs = st.executeQuery();
ArrayList<Integer> amt = new ArrayList<Integer>();
ArrayList<String> op = new ArrayList<String>();
ArrayList<String> time = new ArrayList<String>();
while(rs.next()){
	op.add(rs.getString("operation"));
	amt.add(rs.getInt("amt"));
	time.add(rs.getString("timing"));}


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
		margin-left: 200px;
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
	.row td{
		 background-color : #d1d1d1; 
		margin:40px;
		color: black;
		padding:5px;
	}
	.row th{
		background-color: #376C39;
		margin:40px;
		padding:5px;
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
 				    		<li><a href="account.jsp">Create Account</a></li>
							<li><a href="deposit.jsp">Deposit</a></li>
  						    <li><a href="withdraw.jsp">Do Withdraw</a></li>
  							
							<li><a href="transfer.jsp">Transfer Amount</a></li>
							<li><a href="viewreports.jsp">View Report</a></li>
							<li><a href="logout.jsp">LogOut</a></li>
 						 </ul>
 					 <div>&nbsp;</div>
				</div>
				
			</td>
			
			<th id="about">
				<div style="margin:10px">
					<table id="inner">
						<tr class="row">
							<th>Username</th>
							<th>Account</th>
							<th >Operation</th>
							<th >Amount</th>
							<th >Date-Time</th>
						</tr>
						<% for(int i=0;i<amt.size();i++){ %>
						<tr class="row">
							<td ><%=uname %></td>
							<td ><%= acc %></td>
							<td><%= op.get(i) %></td>
							<td ><%=amt.get(i) %></td>
							<td><%= time.get(i) %></td>
						</tr>
						<%} %>
					
					</table>
				</div>
			</th>
		</tr>
	</table>



</body>
</html>