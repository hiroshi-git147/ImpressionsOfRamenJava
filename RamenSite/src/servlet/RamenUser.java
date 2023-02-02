package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Ramen;

/**
 * Servlet implementation class RamenServlet
 */
@WebServlet("/RamenUser")
public class RamenUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// フォワード先
		String forwardPath = null;

		String action = request.getParameter("action");

		if(action == null) {
			forwardPath = "/WEB-INF/jsp/index.jsp";
		} else if(action.equals("done")) {
			HttpSession s = request.getSession();
			s.removeAttribute("ramenUser");

			forwardPath = "/WEB-INF/jsp/entry.jsp";
		}

		RequestDispatcher d = request.getRequestDispatcher(forwardPath);
		d.forward(request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメーターを取得
		request.setCharacterEncoding("UTF-8");

		Ramen ramen = new Ramen();
		ramen.setName(request.getParameter("name"));
		ramen.setEmail(request.getParameter("email"));
		ramen.setImpression(request.getParameter("impression"));
		ramen.setFavorite(request.getParameter("favorite"));
		ramen.setGender(request.getParameter("gender"));
		ramen.setAge(Integer.parseInt(request.getParameter("age")));
		ramen.setZip1(Integer.parseInt(request.getParameter("zip1")));
		ramen.setZip2(Integer.parseInt(request.getParameter("zip2")));
		ramen.setToppings(request.getParameterValues("toppings"));


		HttpSession s = request.getSession();
		s.setAttribute("ramen", ramen);

		// フォワード
		RequestDispatcher d = request.getRequestDispatcher("/WEB-INF/jsp/check.jsp");
		d.forward(request, response);

	}

}
