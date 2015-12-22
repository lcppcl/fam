package cn.fam.servive;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.beans.IndPer;
import cn.fam.daoImp.UserUpPwdDaoImp;

@WebServlet("/UserUpdatePassword")
public class UserUpdatePassword extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		IndPer indPer = (IndPer) request.getSession().getAttribute("indPer");
		String name = request.getParameter("name");
		String oldPwd = request.getParameter("oldPwd");
		String newPwd = request.getParameter("newPwd");
		String MakePwd = request.getParameter("MakePwd");
		String password = indPer.getPassword();
		String username = indPer.getRegisterName();
		if (oldPwd.equals(password) && newPwd.equals(MakePwd)
				&& name.equals(username)) {
			IndPer indPer1 = new IndPer();
			indPer1.setPassword(newPwd);
			UserUpPwdDaoImp uupai = new UserUpPwdDaoImp();
			try {
				uupai.upPwd(newPwd, username);
				request.getRequestDispatcher("web/login.jsp").forward(request, response);//内部跳转
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			request.setAttribute("mag1", "*修改失败！！！");
			request.getRequestDispatcher("web/user/pwd.jsp").forward(request, response);//内部跳转
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
