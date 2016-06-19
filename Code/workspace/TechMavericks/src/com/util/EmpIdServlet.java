package com.util;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Employeedao;
import com.tgmc.Employee;

/**
 * Servlet implementation class EmpIdServlet
 */
@WebServlet("/checkEmpId")
public class EmpIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String eid = request.getParameter("param");
		Employeedao dao = new Employeedao();
		Employee emp = dao.selectEmployee(eid);
		
		String xmlString=" ";
		
		if(emp!=null){
		xmlString="true";	
		System.out.println("Exists ID "+emp.getEid());
		}
		else{
		 xmlString="false";
		System.out.println("New Emp Id, It is OK.");
		 }
		System.out.println(xmlString);
		response.setContentType("text/xml");
		response.setHeader("Cache-Control", "no-cache");
		response.getWriter().write(xmlString);

	}

}
