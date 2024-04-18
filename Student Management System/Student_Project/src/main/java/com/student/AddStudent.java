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
@WebServlet("/addStudent")
public class AddStudent extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	Integer StudentId = Integer.parseInt(req.getParameter("StudentId"));
	String StudentName = req.getParameter("StudentName");
	Integer StudentAge = Integer.parseInt(req.getParameter("StudentAge"));
	Long StudentPhoneNumber = Long.parseLong(req.getParameter("StudentPhoneNumber"));
	String StudentEmail = req.getParameter("StudentEmail");
	Connection conn = null;
	 try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_database?user=root&password=root");
		PreparedStatement pst = conn.prepareStatement("INSERT INTO student VALUES(?,?,?,?,?)");
		pst.setInt(1, StudentId);
		pst.setString(2, StudentName);
		pst.setInt(3, StudentAge);
		pst.setLong(4, StudentPhoneNumber);
		pst.setString(5, StudentEmail);
		pst.executeUpdate();
		resp.sendRedirect("registerMsg.jsp");
		
	} catch (ClassNotFoundException | SQLException e) {
		
		e.printStackTrace();
	}
	 finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
	 } 
}
}
