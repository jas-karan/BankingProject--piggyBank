package piggyBank;

import java.sql.*;


public class commonClass {
	
	public static Connection prepareConn() {             //get a connection
		Connection c = null;
		try {
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	c = DriverManager.getConnection("jdbc:mysql://localhost/piggybank","root","Jashan262@");
	    	
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		return c;
	}
	
	public static void closeConn(Connection c){     //close the connection
		try {
			if(c!=null)
				c.close();    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
	}
	
	public static int update(String sql) {       // an update statement
		int update = 0;
		Connection c = null;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			update = st.executeUpdate(sql);    
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return update;
	}
	
	public static boolean checkUser(String sql) {      //check if user exists
		boolean check = false;
		Connection c = null;
		try { 
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			if(rs.next() == true){
				check = true;
			}else {
				check = false;
			}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return check;
	}
	
	public static int getAccountNoByName(String sql) {
		int a=0;
		Connection c = null;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next())
				a = rs.getInt("acc_no");
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return a;
	}

	//------------
	
	public static String getNameByNo(String sql) {
		String name = "";
		Connection c=null;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				name = rs.getString(1);
			}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return name;
	}
	

	public static int getBalance(String sql) {
		Connection c=null;
		int balance=0;
		try {
			c = prepareConn();
			Statement st = c.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				balance = rs.getInt("amount");
			}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		closeConn(c);
		return balance;
	}}