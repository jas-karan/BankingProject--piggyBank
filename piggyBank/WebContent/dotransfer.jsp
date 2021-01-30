<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		}
		span{
			font-weight: bold;
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
					Amount is Successfully Transferred.<br/><br/> Your current Balance is: <span><%= session.getAttribute("balance") %></span> INR<br/>
					For more transactions<br/><br/> <a href="transfer.jsp" class="form-button">Click Here</a></br></br>
					<a href="main.jsp" class="form-button">Main Page</a>
		</div>
		
	</div>

</body>

</html>


