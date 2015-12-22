package cn.fam.servive;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;

import cn.fam.beans.IndPer;
import cn.fam.daoImp.IndPerDaoImp;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse response)
			throws ServletException, IOException {
		
		String RegisterName = req.getParameter("RegisterName");
		String password1 = req.getParameter("password1");
		String password2 = req.getParameter("password2");
		String RealName = req.getParameter("RealName");
		String Sex = req.getParameter("Sex");
		String Nation = req.getParameter("Nation");
		String WorkSpace = req.getParameter("WorkSpace");
		String IdCard = req.getParameter("IdCard");
		String Education = req.getParameter("Education");
		String Political = req.getParameter("Political");
		String Phone = req.getParameter("Phone");
		String email = req.getParameter("email");
		if (RegisterName != null && !RegisterName.equals("")
				&& password1 != null && !password1.equals("")
				&& password2 != null && !password2.equals("")
				&& RealName != null && !RealName.equals("") && Sex != null
				&& !Sex.equals("") && Nation != null && !Nation.equals("")
				&& WorkSpace != null && !WorkSpace.equals("") && IdCard != null
				&& !IdCard.equals("") && Education != null
				&& !Education.equals("") && Political != null
				&& !Political.equals("") && Phone != null && !Phone.equals("")) {
			IndPer indPer = new IndPer();
			indPer.setRegisterName(RegisterName);
			indPer.setPassword(password1);
			indPer.setRealName(RealName);
			indPer.setSex(Sex);
			indPer.setNation(Nation);
			indPer.setWorkSpace(WorkSpace);
			indPer.setIdCare(IdCard);
			indPer.setEducation(Education);
			indPer.setPolitical(Political);
			indPer.setType("1");
			indPer.setEmail("email");

			IndPerDaoImp ipdi = new IndPerDaoImp();
			try {
				IndPer indPer1 = ipdi.findInvPer(RegisterName, password1);
				if (indPer1 == null) {
					ipdi.addIndPer(indPer);
					response.sendRedirect("web/login.jsp");
				} else {
					req.setAttribute("mag1", "*此帐号您已经注册过，请登录！！！");
					req.getRequestDispatcher("web/login.jsp").forward(req, response);//内部跳转
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			req.setAttribute("mag1", "*您输入的有误，请重新输入！！！");
			req.getRequestDispatcher("web/register.jsp").forward(req, response);//内部跳转
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		this.doGet(req, resp);
	}

}
