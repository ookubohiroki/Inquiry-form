package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Confirm")
public class Confirm extends HttpServlet {
    	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    		req.setCharacterEncoding("UTF-8");
    		
    		String onamae = req.getParameter("onamae");
    		String mail_address = req.getParameter("mail_address");
    		String pref = req.getParameter("pref");
    		String message = req.getParameter("message");
    		
    		req.setAttribute("onamae", onamae);
    		req.setAttribute("mail_address", mail_address);
    		req.setAttribute("pref", pref);
    		req.setAttribute("message", message);
    		
    		String sex = req.getParameter("sex");
    		if("male".equals(sex)) {
    			sex = "男性";
    		}else if("female".equals(sex)){
				sex = "女性";
			}else {
				sex = "未選択";
			}
    		req.setAttribute("sex", sex);
    		
    		String cates = "";
    		String[] cate = req.getParameterValues("cates");
    		if(cate != null) {
	    		for(int i = 0; i < cate.length; i++) {
	    			cates = cates + cate[i] + " ";
	    		}
    		}
    		req.setAttribute("cates", cates);
    		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/confirm.jsp");
    		rd.forward(req, res);
    	}
}
