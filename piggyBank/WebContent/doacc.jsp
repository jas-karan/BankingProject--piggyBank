<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "piggyBank.*, java.sql.*, java.util.*"%>
    
<%
//java Code
String uname = request.getParameter("username");
String password = request.getParameter("password");
String question = request.getParameter("security");
String answer = request.getParameter("answer");
String address = request.getParameter("address");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String sql = "select * from user_details where uname = ?";
Connection c = commonClass.prepareConn();
PreparedStatement st = c.prepareStatement(sql);
st.setString(1,uname);
ResultSet rs = st.executeQuery();
if(rs.next())
	response.sendRedirect("already_user.jsp");
sql = "INSERT INTO user_details (uname, pass, sec_ques, answer, address, email, mobile ) VALUES ('"+uname+"','"+password+"','"+question+"','"+answer+"','"+address+"','"+email+"','"+mobile+"')";
int update = commonClass.update(sql);

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
		text-decoration: underline;
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
	#resp{
		width: 40%;
		background-color: #4d774e;
		color: white;
		padding: 100px;
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
		
		<tr></tr>
		<tr></tr>
		<tr  style="text-align:center">
			<td id="resp">
				
					<p>
					<% 
							if(update == 1){
					%>
							Registered Successfully.<br/><a href="start.html">Click Here</a> to Login and Activate Your Account.
					<%
							}else {
						%>
							Sorry!. Account is not created.<br/>Click Here to <a href="acc.jsp">Register Again</a>
						<%
							}
						 %>
					</p>
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