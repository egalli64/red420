
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

import Dao.FilmsDao;

@SuppressWarnings("serial")
@WebServlet("/scenesByFilm")
public class ScenesFilmSrv extends HttpServlet {
	private static final Logger log = LoggerFactory.getLogger(FilmServlet.class);

	@Resource(name = "jdbc/red")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("called");
		String param = request.getParameter("filmId");
		try (FilmsDao dao = new FilmsDao(ds)) {
			int filmId = Integer.parseInt(param);
			request.setAttribute("scenes", dao.getByFilmId(filmId));
			request.getRequestDispatcher("scenes.jsp").forward(request, response);

		}
	}
}
