

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.xdevapi.PreparableStatement;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		DbManager db = new DbManager();
		java.sql.Connection con=db.getConnection();
		
		String name=request.getParameter("uName");
		String number=request.getParameter("pNumber");
		String email=request.getParameter("email");
		String comment=request.getParameter("comment");
		
		try{
			
			PreparedStatement st=con.prepareStatement("insert into contact(uName,pNumber,email,comnt)values('"+name+"','"+number+"','"+email+"','"+comment+"')");
			st.executeUpdate();
			response.sendRedirect("index.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
	}

}
