package cn.fam.servive;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.daoImp.AppInfoDaoImp;

@WebServlet("/PassUerAppInfroServert")
public class PassUerAppInfroServert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("pass");
		System.out.println(name);
		AppInfoDaoImp appImp = new AppInfoDaoImp();
		appImp.SetPass(name);
		response.sendRedirect("web/manager/SetPassSucess.jsp");
	}

}
