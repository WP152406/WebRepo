package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVo;

import com.google.gson.JsonObject;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Object login;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		request.setCharacterEncoding("utf-8");
		
		ServletContext context = this.getServletContext();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if("test@naver.com".equals(id)) {
			UserVo user = new UserVo();
			user.setName("test");
			HttpSession session2 = request.getSession();
			session2.setAttribute("user",user);
			response.sendRedirect("home.jsp");
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
			request.setAttribute("msg","error");
			request.setAttribute("requestId",id);
			dispatcher.forward(request, response);
		}
	}

}
