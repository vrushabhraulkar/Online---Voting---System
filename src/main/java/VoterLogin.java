

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class VoterLogin
 */
@WebServlet("/VoterLogin")
public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	
		
		DbManager db = new DbManager();
		java.sql.Connection con=db.getConnection();
		
		String vvNumber=request.getParameter("voternumber");
		
		try {
			//if voter is already in temp table that means he already voted;
			PreparedStatement st=con.prepareStatement("select vNumber from temp_vc_number where vNumber='"+vvNumber+"'");
			ResultSet rs =st.executeQuery("select vNumber from temp_vc_number where vNumber='"+vvNumber+"'");
			if(rs.next()) {
				response.sendRedirect("voted.jsp");
			}
			else {
				PreparedStatement st1=con.prepareStatement("select * from voters where vNumber='"+vvNumber+"'" );
				ResultSet rs1=((java.sql.Statement)st1).executeQuery("select  * from voters where vNumber='"+vvNumber+"'");
				if(rs1.next()) {
					response.sendRedirect("voterWelcome.jsp");
				}
				else {
					response.sendRedirect("invalid.jsp");
				}
				
					
			}
			
		}
		catch(Exception e){
			e.printStackTrace();

		}
	}

}
