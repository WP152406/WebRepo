package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public HelloServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청 데이터 처리
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		
		System.out.println("id : " + id + "\nname : " + name);
		
		//출력 데이터 Content Type 설정
		response.setContentType("text/html;charset=utf-8");
		PrintWriter aut = response.getWriter();
		aut.println("<!DOCTYPE html>");
		aut.println("<html>");
		aut.println("<head>");
		aut.println("<title>Servlet Test</title>");
		aut.println("</head>");
		aut.println("<body>");
		aut.println("<h1>Hello, Servlet</h1>");
		aut.println("<h1>안녕, 서블릿</h1>");
		aut.println("<h2>id : " + id + ", name : "+name+"</h2>");
		aut.println("</body>");
		aut.println("</html>");
		
		aut.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("doPost() 호출");
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init() 호출");
	}
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service() 호출");
		super.service(arg0, arg1);
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy() 호출");
	}
}
