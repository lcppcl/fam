package cn.fam.servive;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.daoImp.VerInfoDaoImp;
@WebServlet("/ManUpdatePwdServlet")
public class ManUpdatePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		String newPwd = request.getParameter("newPwd");
		VerInfoDaoImp vid = new VerInfoDaoImp();
		//数据库的信心已经修改
		vid.UpdatePwd(name, newPwd);
		//跳转页面（重定向）保证CSS样式不变
		response.sendRedirect("web/manager/correct.jsp");
	}

}
