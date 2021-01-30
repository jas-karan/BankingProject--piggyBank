About Project

This project is aimed at developing an Online Banking for customer.
The system is an online application that can be accessed with proper login
provided.
The project has been planned to be having the view of distributed
architecture, with centralized storage of the database.
Using the constructs of MySQL Database server and all the user interfaces have been designed using the JAVA.
The database connectivity is planned using the “JDBC- Database”
methodology.


Tools used

Using My Eclipse IDE software a dynamic web
project is designed where the following
programming languages and software are used-
1. Front End : HTML and JSP
2. Back End : JAVA, JSP and SERVLET PROGRAMMING
3. MySQL Work Bench
4. Apache Tomcat Server



working

» First the login page is opened and there you have to login using username and
password or
» if you are new, then register first and then login.
» After you logged in, create bank account using the specific link (clearly visible).
» If you want to know or check your balance , use check balance link,
» if you want to deposit money then use deposit link,
» if you want to withdraw money use withdraw link ,
» if transfer money then click on transfer money, or
» if logout then click on logout.


General working for each operation -
» For example, When you click on create account and then
“account.jsp”is invoked where you submit the form, it will invoke
“doaccount.jsp” and it checks if account is already there and if not,
insert details into database and Displays suitable message if
account is created or not and the account details.
» For example, When you click on Deposit amount and then
“deposit.jsp”is invoked where it checks if there is any account and
you select the account and amount to deposit and submit the
form, then it will invoke “dodeposit.java” servlet and it insert
details into database and Displays suitable message if money is
deposited or not and current balance in account.
» and again, same way rest all the things are connected
and created

***Don't forget to change your mySQL server password in commonClass.java file in src folder***