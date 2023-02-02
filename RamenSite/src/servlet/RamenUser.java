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
import model.RamenUserLogic;

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
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String impression = request.getParameter("impression");
		String favorite = request.getParameter("favorite");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String zip1 = request.getParameter("zip1");
		String zip2 = request.getParameter("zip2");
		String[] MyToppings = request.getParameterValues("toppings");


		Ramen ramenUser = new Ramen();
		ramenUser.setName(name);
		ramenUser.setEmail(email);
		ramenUser.setImpression(impression);
		ramenUser.setFavorite(favorite);
		ramenUser.setGender(gender);
		ramenUser.setAge(Integer.parseInt(age));
		ramenUser.setZip1(Integer.parseInt(zip1));
		ramenUser.setZip2(Integer.parseInt(zip2));

		String topping = "";
		if(MyToppings != null) {
			for(int i = 0; i < MyToppings.length; i++) {
				topping += MyToppings + ", ";
			}
		}

		ramenUser.setToppings(topping);

		HttpSession s = request.getSession();
		s.setAttribute("ramenUser", ramenUser);

		// フォワード
		RequestDispatcher d = request.getRequestDispatcher("/WEB-INF/jsp/check.jsp");
		d.forward(request, response);



	}

}
