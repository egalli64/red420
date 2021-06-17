package Servlet;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import Dao.UserDao;

@SuppressWarnings("serial")
@WebServlet("/user")
public class UserSrv extends HttpServlet {
	@Resource(name = "jdbc/red")
	private DataSource ds;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		if (userName == null || userName.isBlank() || password == null || password.isBlank()) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}
		String uri = "index.jsp";
		try (UserDao dao = new UserDao(ds)) {

			if (dao.getUserByName(userName, password).size() == 1) {
				HttpSession session = request.getSession();
				session.setAttribute("logged", userName);
				uri = "page2.jsp";
			} 
		}
		request.getRequestDispatcher(uri).forward(request, response);
	}
}
//		HttpSession session =request.getSession();
//		User user = (User)session.getAttribute("logged");
//		if(user != null) {
//			if(user == null && userName != null && password != null) {
//				try(UserDao dao = new UserDao (ds)){
//					User logged = (User) dao.getUserByName(userName, password);
//					session.setAttribute("logged", logged);
//				}
//			}
//		}
//
//		
//		request.getRequestDispatcher("index.jsp").forward(request, response);
//	}
