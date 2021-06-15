package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/user")
public class UserSrv extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("user");
		String password = request.getParameter("password");

		String url;
		if (user == null || user.isBlank() || password == null || password.isBlank()) {
			url = "index.jsp";
		} else {
			url = "index.jsp";
		}

		request.getRequestDispatcher(url).forward(request, response);
	}
}
