package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Thanks")
public class Thanks extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String onamae = req.getParameter("onamae");
		String mail_address = req.getParameter("mail_address");
		String sex = req.getParameter("sex");
		String cates = req.getParameter("cates");
		String pref = req.getParameter("pref");
		String message = req.getParameter("message");
		
		req.setAttribute("onamae", onamae);
		req.setAttribute("mail_address", mail_address);
		req.setAttribute("sex", sex);
		req.setAttribute("cates", cates);
		req.setAttribute("pref", pref);
		req.setAttribute("message", message);
		
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/thanks.jsp");
		rd.forward(req, res);
	}

}
