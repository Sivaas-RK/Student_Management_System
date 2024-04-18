package com.student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/saveUpdate")
public class SaveUpdate extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer StudentId = Integer.parseInt(req.getParameter("StudentId"));
		String StudentName = req.getParameter("StudentName");
		Integer StudentAge = Integer.parseInt(req.getParameter("StudentAge"));
		Long StudentPhoneNumber = Long.parseLong(req.getParameter("StudentPhoneNumber"));
		String StudentEmail = req.getParameter("StudentEmail");

		Connection conn= null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_database?user=root&password=root");
			
			
			PreparedStatement pst = conn.prepareStatement("UPDATE student SET StudentName=?,StudentAge=?,StudentPhoneNumber=?, StudentEmail=? WHERE StudentId=?");
			pst.setString(1, StudentName);
			pst.setInt(2, StudentAge);
			pst.setLong(3, StudentPhoneNumber);
			pst.setString(4, StudentEmail);
			pst.setInt(5, StudentId);
			pst.executeUpdate();
			
			
			resp.sendRedirect("updateMsg.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
