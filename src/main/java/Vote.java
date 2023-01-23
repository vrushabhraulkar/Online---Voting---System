

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Vote
 */
@WebServlet("/Vote")
public class Vote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Vote() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		
		DbManager db = new DbManager();
		java.sql.Connection con=db.getConnection();
		
		String vNumber=request.getParameter("voternumber");
		String partie=request.getParameter("partie");
		
		try {
			PreparedStatement st1=con.prepareStatement("insert into temp_vc_number(vNumber)values('"+vNumber+"')");
			PreparedStatement st2=con.prepareStatement("insert into vote(vNumber,partie)values('"+vNumber+"','"+partie+"')");

			st1.executeUpdate();
			st2.executeUpdate();
			
			response.sendRedirect("index.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
	}

}
