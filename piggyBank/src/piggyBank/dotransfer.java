package piggyBank;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class dotransfer
 */
@WebServlet("/dotransfer")
public class dotransfer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dotransfer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 LocalDateTime myDateObj = LocalDateTime.now();
		 DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
         String formattedDate = myDateObj.format(myFormatObj);
         
		String uname = request.getParameter("uname");
		String msg = request.getParameter("msg");
		String src_acc = (request.getParameter("src_acc_no"));
		String dest_acc = request.getParameter("dest_acc_no");
		int amt = Integer.parseInt(request.getParameter("amount"));
		
		Connection c= commonClass.prepareConn();
		String bal_sql = "SELECT amount FROM acc_details where uname = ? and acc_no = ?";
		int bal = 0;
		try {
		PreparedStatement st = c.prepareStatement(bal_sql);
		st.setString(1,uname);
		st.setString(2, src_acc);
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			bal = rs.getInt("amount");
		}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
		if(bal<amt) {
			HttpSession session=request.getSession();  
	        session.setAttribute("balance",bal);  
			RequestDispatcher rd=request.getRequestDispatcher("lowbalance.jsp");  
			rd.forward(request, response);
		}
		
		else {
			
			
		bal = bal - amt;  // new balance
		String sql_up = "update acc_details set amount = ? where uname = ? and acc_no =?";
		try {
			PreparedStatement st = c.prepareStatement(sql_up);
			st.setInt(1,bal);
			st.setString(2, uname);
			st.setString(3, src_acc);
			int t = st.executeUpdate();
			}
			catch (Exception ex) {
				System.out.println (ex);
			}
		
		String sql = "insert into tr_details(uname,src_acc,des_acc,amount,timing,msg) values(?,?,?,?,?,?)";
			try {
					PreparedStatement st = c.prepareStatement(sql);
					st.setString(1,uname);
					st.setString(2,src_acc);
					st.setString(3, dest_acc);
					st.setInt(4, amt);
					st.setString(5, formattedDate);
					st.setString(6,msg);
					int t = st.executeUpdate();
					}
					catch (Exception ex) {
						System.out.println (ex);
					}		
	
		
		HttpSession session=request.getSession();  
        session.setAttribute("balance",bal); 
        // here half done
        
        bal_sql = "SELECT amount FROM acc_details where acc_no = ?";
		bal = 0;
		try {
		PreparedStatement st = c.prepareStatement(bal_sql);
		
		st.setString(1, dest_acc);
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			bal = rs.getInt("amount");
		}
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
      
		bal = bal + amt;  // new balance
		 
		sql_up = "update acc_details set amount = ? where acc_no =?";
	
		try {
			PreparedStatement st = c.prepareStatement(sql_up);
			st.setInt(1,bal);
			
			st.setString(2, dest_acc);
			int t = st.executeUpdate();
			}
			catch (Exception ex) {
				System.out.println (ex);
			}
	  
		RequestDispatcher rd=request.getRequestDispatcher("dotransfer.jsp");   
		rd.forward(request, response);
		}
	}
        
		
	}

		
		
		
	
		



