package cn.fam.servive;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.daoImp.AppInfoDaoImp;

/**
 * Servlet implementation class AppInformationDelServlet
 */
@WebServlet("/AppInformationDelServlet")
public class AppInformationDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AppInfoDaoImp appdao = new AppInfoDaoImp();
		List list = appdao.SelectInfo();  
		//将值放入session中
		request.getSession().setAttribute("list", list); 
		//重定向
		response.sendRedirect("web/manager/mana_d.jsp");
	}

}
