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
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Piggy Bank</title>
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
	.header2{
		padding: 20px;
		text-align:center;
		}
	.form-button {
			border: 1px solid black;
			color: black;
			
			border-radius: 10px;
			padding: 3px;
			text-decoration: none;
			margin:auto;
			}
	a.form-button{
			margin-top:10px;
			background-color : #d1d1d1;
			width:62.5%;
		}
		span{
			font-weight: bold;
		}
		
		table{
			display: block;
			overflow: auto;
			 height: 300px;
			
		}
		
		table td{
  			border: 1px solid #ccc;
  			width: 200px;
  			
		}
	footer{
			border:1px solid black;
			padding:20px;
			background: url("head.jpg");
		  color:white;
			background-size: 100% 200px;
			}
	a.form-button:hover,
		a.form-button:focus {
		    background-color: #4d774e;
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
		
		<div class="header2">
					<table>
					<thead>
						<tr class="row">
							<th>Username</th>
							<th>Account</th>
							<th >Operation</th>
							<th >Amount</th>
							<th >Date-Time</th>
						</tr>
					</thead>
						<tbody>
						<% for(int i=0;i<amt.size();i++){ %>
						<tr>
							<td ><%=uname %></td>
							<td ><%= acc %></td>
							<td><%= op.get(i) %></td>
							<td ><%=amt.get(i) %></td>
							<td><%= time.get(i) %></td>
						</tr>
						<%} %>
					</tbody>
					</table>
					<br/><br/>
					<a href="main.jsp" class="form-button">Main Page</a>
		</div>
		
	</div>
	
</body>

</html>