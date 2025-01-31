package controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import dao.StudentDao;
import dto.Student;
@WebServlet("/fetchall")
public class FetchData extends GenericServlet       //fetchall file
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
	{
		StudentDao dao=new StudentDao();
		List<Student> list=dao.fetchAll();
		req.setAttribute("list", list);
		req.getRequestDispatcher("FetchAll.jsp").forward(req, res);
	}
//		res.getWriter().print("<html><body>"
//				+ "<table border='1'>"
//				+ "<tr>"
//				+ "<th>Id</th>"
//				+ "<th>Name</th>"
//				+ "<th>Mobile</th>"
//				+ "<th>Email</th>"
//				+ "<th>Gender</th>"
//				+ "<th>Address</th>"
//				+ "<th>Country</th>"
//				+ "<th>DOB</th>"
//				+ "<th>Languages</th>"
//				+ "</tr>");
//		
//		StudentDao dao=new StudentDao();
//		List<Student> list=dao.fetchAll();
//	
//		for(Student student:list)
//		{
//			
//		
//		res.getWriter().print("<tr>"
//				+ "<th>"+student.getId()+"</th>"
//				+ "<th>"+student.getName()+"</th>"
//				+ "<th>"+student.getMobile()+"</th>"
//				+ "<th>"+student.getEmail()+"</th>"
//				+ "<th>"+student.getGender()+"</th>"
//				+ "<th>"+student.getAddress()+"</th>"
//				+ "<th>"+student.getCountry()+"</th>"
//				+ "<th>"+student.getDob()+"</th>"
//				+ "<th>"+Arrays.toString(student.getLanguage())+"</th>"
//				+ "</tr>");
//		
//	}
//	res.getWriter().print("</table></body></html>");
//	}
}
