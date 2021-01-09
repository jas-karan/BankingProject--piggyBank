<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Piggy Bank- Register</title>
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
		margin-top:10px;
		color: white;
	}
	#inner{
		padding: 40px;
		border:none;
		background-color: white;
		margin: 40px;
		margin-top:10px;
	}
	
	body{
		margin:50px;
		background-color: #164a41;
	}
	label{
		color: black;
		font-family: 'Roboto Mono', monospace;
		font-size: 12px;
	}
	option{
		font-family: 'Roboto Mono', monospace;
		font-size: 12px;
		background-color : #d1d1d1; 
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
		</tr>
		<tr></tr>
		<tr>
			
			
			<td style="background-color: #4d774e">
				
					<div id="head" style="padding-left:150px">Register Here</div>
					<form action="doacc.jsp" method="post">
						<table id="inner">
							<tr><td>
								<label for="username">Username: </label>
								<input type="text" name="username" required id="username" placeholder="Eg. John">
							</td></tr>
							<tr><td>
								<label for="password">Password: </label>
								<input type="password" id="password" required name="password">
							</td></tr>
							<tr><td>
								 <label for="security">Security Question: </label>
								 <select name="security" id="security" required>
                					  <option value="Your First School Name">Your First School Name?</option>
             					      <option value="Your Car Number">Favorite Food?</option>
              					      <option value="Your Mothers Name">First Movie You Watched?</option>
            					      <option value="Favorite Color">Favorite Country?</option>
              					  </select>
							</td></tr>
							<tr><td>
								<label for="answer">Answer: </label>
								<input type="text" name="answer" required id="answer">
							</td></tr>
							<tr><td>
								<label for="email">Email: </label>
								<input type="email" name='email' required id="email">
							</td></tr>
							<tr><td>
								<label for="address">Address: </label>
								<input type="text" id="address" required name="address">
							</td></tr>
							<tr><td>
								<label for="mobile">Mobile: </label>
								<input id="mobile" type="text" required name="mobile">
							</td></tr>
							<tr><td>
								<input style="background-color: #4d774e; color: white; font-size: 15px; border:none" type="submit" value="Register">
							</td></tr>
						</table>
					</form>
				
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