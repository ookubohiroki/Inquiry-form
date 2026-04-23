package contact;

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
    		String sex = req.getParameter("sex");
    		
    		if(sex.equals("male")) {
    			sex = "男性";
    		}else {
				sex = "女性";
			}
    		req.setAttribute("sex", sex);
    		
    		String cates = "";
    		String[] cate = req.getParameterValues("cates");
    		for(int i = 0; i < cate.length; i++) {
    			cates = cates + cate[i];
    		}
    		req.setAttribute("cates", cates);
    		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/confirm.jsp");
    		rd.forward(req, res);
    	}
}
