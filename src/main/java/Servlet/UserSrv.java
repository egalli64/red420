package Servlet;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
		String user = request.getParameter("user");
		String password = request.getParameter("password");

		if (user == null || user.isBlank() || password == null || password.isBlank()) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		try (UserDao dao = new UserDao(ds)) {

			if (dao.getUserByName(user, password).size() == 1) {
				request.getRequestDispatcher("page2.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}

	}
}
