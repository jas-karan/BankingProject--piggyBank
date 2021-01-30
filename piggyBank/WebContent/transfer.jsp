<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="piggyBank.*, java.sql.*, java.util.*"%>
    
 <%
String uname = (String)session.getAttribute("cust_name");
String sql = "SELECT acc_no, acc_type FROM acc_details WHERE uname=?";
Connection c = commonClass.prepareConn();
PreparedStatement st = c.prepareStatement(sql);
st.setString(1,uname);
ResultSet rs = st.executeQuery();
ArrayList<Integer> accounts = new ArrayList<Integer>(2);
ArrayList<String> types = new ArrayList<String>();
while(rs.next()){
	accounts.add(rs.getInt("acc_no"));
	types.add(rs.getString("acc_type"));
	
}
if(accounts.size()==0)
	response.sendRedirect("noacc.jsp");

sql= "select acc_no, acc_type from acc_details where uname <>?";
st = c.prepareStatement(sql);
st.setString(1,uname);
rs = st.executeQuery();
ArrayList<Integer> accounts1 = new ArrayList<Integer>(2);
ArrayList<String> types1 = new ArrayList<String>(2);
while(rs.next()){
	accounts1.add(rs.getInt("acc_no"));
	types1.add(rs.getString("acc_type"));	
}
if(accounts1.size()==0)
	response.sendRedirect("noacc1.jsp");

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
					<h2>Transfer Amount</h2>
					<form action="dotransfer" method="post">
						
								<label for="username">Account Holder Name: </label>
								<input type="text" name="uname" id="username" value="<%= (String)session.getAttribute("cust_name")%>">
							
								<label for="acc_type">Select Source Account: </label>
								<select name="src_acc_no" id="acc_type">
		 							 <% for(int i=0;i<accounts.size();i++){%>
		 							 <option value=<%=accounts.get(i) %>><%=accounts.get(i) %>:<%=types.get(i) %></option><%} %>
		 						 </select>
							
								<label for="acc_type">Select Destination Account: </label>
								<select name="dest_acc_no" id="acc_type">
		 							 <% for(int i=0;i<accounts1.size();i++){%>
		 							 <option value=<%=accounts1.get(i) %>><%=accounts1.get(i) %>:<%=types1.get(i) %></option><%} %>
		 						 </select>
						
								<label for="amt">Amount: </label>
								<input type="text" name="amount" id="amt">
						
								<label for="msg">Any Message: </label>
								<textarea name="msg" id="msg" maxlength="254"></textarea>
							
								<input type="submit" class="form-button" value="Transfer Amount">
						
						<a href="main.jsp" class="form-button">Main Page</a>
					</form>
				
			</div>
		<footer>
			All rights Reserved @piggybank
		</footer>
	</div>
	

</body>

</html>