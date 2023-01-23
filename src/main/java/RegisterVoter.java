

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterVoter
 */
@WebServlet("/RegisterVoter")
public class RegisterVoter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	
		
		DbManager db = new DbManager();
		java.sql.Connection con=db.getConnection();
		
		String name=request.getParameter("uName");
		String number=request.getParameter("pNumber");
		String email=request.getParameter("email");
		String vNumber=request.getParameter("voterNumber");
		String address=request.getParameter("address");
		String dob=request.getParameter("dob");
		
		try {
			PreparedStatement st=con.prepareStatement("insert into voters(uName,pNumber,email,vNumber,address,dob)values('"+name+"','"+number+"','"+email+"','"+vNumber+"','"+address+"','"+dob+"')");
			st.executeUpdate() ;
			response.sendRedirect("adminwelcome.jsp");
			
		}
		catch(Exception e){
			e.printStackTrace();

		}
		
	}

}
