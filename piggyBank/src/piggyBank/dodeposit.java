package piggyBank;

import java.io.IOException;
import java.sql.*;

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
 * Servlet implementation class dodeposit
 */
@WebServlet("/dodeposit")
public class dodeposit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dodeposit() {
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
		String op = "DEPOSIT";
		 LocalDateTime myDateObj = LocalDateTime.now();
		    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		    String formattedDate = myDateObj.format(myFormatObj);
		String uname = request.getParameter("uname");
		String acc = (request.getParameter("acc_type"));
		int amt = Integer.parseInt(request.getParameter("amount"));
		Connection c= commonClass.prepareConn();
		String bal_sql = "SELECT amount,acc_no FROM acc_details where uname = ? and acc_type = ?";
		int bal = 0;
		int acc_no = 0;
		try {
		PreparedStatement st = c.prepareStatement(bal_sql);
		st.setString(1,uname);
		st.setString(2, acc);
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			bal = rs.getInt("amount");
			acc_no = rs.getInt("acc_no");}
			
		}
		catch (Exception ex) {
			System.out.println (ex);
		}
	
		bal = bal + amt;  // new balance
		String sql_up = "update acc_details set amount = ? where uname = ? and acc_no =?";
	
		try {
			PreparedStatement st = c.prepareStatement(sql_up);
			st.setInt(1,bal);
			st.setString(2, uname);
			st.setInt(3, acc_no);
			int t = st.executeUpdate();
			}
			catch (Exception ex) {
				System.out.println (ex);
			}
		
		String sql = "INSERT INTO tx_details (uname, acc_no, operation, amt,timing) VALUES ('"+uname+"',"+acc_no+",'DEPOSIT',"+amt+",'"+formattedDate+"')";
		
		int update = commonClass.update(sql);
		
		HttpSession session=request.getSession();  
        session.setAttribute("balance",bal);  
		RequestDispatcher rd=request.getRequestDispatcher("dodeposit.jsp");  

		  
		rd.forward(request, response);
	}

}
