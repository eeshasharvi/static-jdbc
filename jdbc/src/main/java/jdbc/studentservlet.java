package jdbc; 

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")

public class studentservlet extends HttpServlet {

protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","root@123");
		String sql= "insert into student(id,name,email) value(?,?,?)";
		int id=Integer.parseInt(req.getParameter("ID"));
		String name=req.getParameter("Name");
		String email=req.getParameter("Email");
		
		PreparedStatement pmst= conn.prepareStatement(sql);
		pmst.setInt(1, id);
		pmst.setString(2, name);
		pmst.setString(3, email);
		int i=pmst.executeUpdate();
		PrintWriter pw=resp.getWriter();
		if(i>0)
		{
			System.out.println("Successfully Inserted");
//			pw.println("Inserted");
			resp.sendRedirect("welcome.jsp");
		}
		else
		{
			System.out.println("error");
//			pw.println("error");
			resp.sendRedirect("error.jsp");
		}
		conn.close();
		pmst.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
}

}
