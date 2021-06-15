
package Servlet;

import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import Dao.CityDao;

@SuppressWarnings("serial")
@WebServlet("/filmByCity")
public class CityIdSrv extends HttpServlet {
	private static final Logger log = LoggerFactory.getLogger(CityIdSrv.class);

	@Resource(name = "jdbc/red")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("called");
		String param = request.getParameter("cityId");
		try (CityDao dao = new CityDao(ds)) {
			int cityId = Integer.parseInt(param);
			request.setAttribute("cities", dao.getByCityId(cityId));
			request.getRequestDispatcher("cities.jsp").forward(request, response);

		}
	}
}
