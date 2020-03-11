package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import view.ViewMath;

@WebServlet("/calc")
public class MathServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MathServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String paramA = req.getParameter("a");
		String paramB = req.getParameter("b");
		String operation = req.getParameter("op");
		ViewMath viewMath = getViewMath(paramA, paramB, operation);
		req.setAttribute("viewMath", viewMath);

		req.getRequestDispatcher("mathUseBean.jsp").forward(req, resp);
	}

	private ViewMath getViewMath(String paramA, String paramB, String operation) {
		ViewMath viewMath = new ViewMath();
		try {
			int a = getInt(paramA);
			try {
				int b = getInt(paramB);
				viewMath.setC(setResult(a, b, operation));
			} catch (NumberFormatException e) {
				viewMath.setC("N/A");
				viewMath.setErrorB("Lose uneto B");
			}
		} catch (NumberFormatException e) {
			viewMath.setC("N/A");
			viewMath.setErrorA("Lose uneto A");
		}
		viewMath.setA(paramA);
		viewMath.setB(paramB);
		return viewMath;
	}

	private String setResult(int a, int b, String operation) {
		if (operation.equals("plus")) {
			return String.valueOf(a+b);
		} else if (operation.equals("minus")) {
			return String.valueOf(a-b);
		}
		return "Not defined operation";

	}

	private int getInt(String param) throws NumberFormatException {
		try {
			return Integer.parseInt(param);
		} catch (NumberFormatException e) {
			throw e;
		}
	}

}
