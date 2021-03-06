package loginform;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class selectServlet
 */
@WebServlet("/naveruserinfo")
public class naveruserinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;


	String url;
	String userid;
	String passwd;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public naveruserinfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 url = "jdbc:oracle:thin:@localhost:1521:orcl";
		 userid ="system";
		 passwd = "human123";
		 Connection conn = null;
		 Statement stmt = null;
		 ResultSet rs = null;
		 PrintWriter out = response.getWriter();
		 try {
			  System.out.println("console1");
	    	  String sql1 = "insert into naver values (?,?,?,?,?,?)";
	    	  Class.forName("oracle.jdbc.driver.OracleDriver");
	    	  conn = DriverManager.getConnection(url,userid,passwd);
	    	  System.out.println("console2");
	    	  PreparedStatement ps1 = conn.prepareStatement(sql1);
	    	  System.out.println("console3");
	    	  String id = request.getParameter("id");
	    	  String password= request.getParameter("password");
	    	  String tel = request.getParameter("tel");
	    	  String email= request.getParameter("email");
	    	  String gender = request.getParameter("gender");
	    	  String name= request.getParameter("name");
	    	  System.out.println("console4");
	    		  ps1.setString(1, id);
	    		  ps1.setString(2, password);
	    		  ps1.setString(3, name);
	    		  ps1.setString(4, gender);
	    		  ps1.setString(5, email);
	    		  ps1.setString(6, tel);
	    		  System.out.println("console5");
	    		  ps1.executeUpdate();
	    		  System.out.println("console6");
	        	  
	        	  System.out.println("console7");
		    	  ps1.close();
		    	  //DB닫아줌//
		    	  conn.close();
		    	  System.out.println("console8");
		}catch(Exception e) {
			out.println("error");
			System.out.println(e);
		}finally {
			try {
				rs.close();
			} catch (SQLException e) {
				System.out.println(e);
				e.printStackTrace();
			}
			try {
				stmt.close();
			} catch (SQLException e) {
				System.out.println(e);
				e.printStackTrace();
			}
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println(e);
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

} 