package cn.fam.servive;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.beans.IndPer;
import cn.fam.beans.VerInfo;
import cn.fam.daoImp.IndPerDaoImp;
import cn.fam.daoImp.VerInfoDaoImp;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String RegisterName = request.getParameter("name").trim();
		String Password = request.getParameter("Password").trim();
		if (RegisterName != null && !RegisterName.equals("")
				&& Password != null && !Password.equals("")) {
			IndPerDaoImp inv = new IndPerDaoImp();
			try {
				IndPer indPer = inv.findInvPer(RegisterName, Password);
				if (indPer != null) {
					request.getSession().setAttribute("indPer", indPer);
					response.sendRedirect("web/user/user.jsp");
				} else {
					VerInfoDaoImp vii = new VerInfoDaoImp();
					VerInfo verInfo = vii.findVer(RegisterName, Password);
					if (verInfo != null) {
						request.getSession().setAttribute("verInfo", RegisterName);
						response.sendRedirect("web/manager/user.jsp");
					} else {
						request.setAttribute("msg1", "*登录失败");
						request.getRequestDispatcher("web/login.jsp").forward(request, response);//锟节诧拷锟斤拷转
					}
				}
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		} else {
			request.setAttribute("msg1", "*登录失败");
			request.getRequestDispatcher("web/login.jsp").forward(request, response);//锟节诧拷锟斤拷转
		}
	}
}
