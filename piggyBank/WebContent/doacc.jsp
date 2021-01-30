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

	}
	header2{
		padding: 20px;
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
					<% 
							if(update == 1){
					%>
							Registered Successfully!.</br></br></br><a href="start.html" class="form-button">Click Here</a> to Login and Activate Your Account.
					<%
							}else {
						%>
							Sorry!. Account is not created.<br/></br></br>Click Here to <a href="acc.jsp" class="form-button">Register Again</a>
						<%
							}
						 %>
			
			
		</div>
		
	</div>

	
</body>
</html>