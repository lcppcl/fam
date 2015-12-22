package cn.fam.servive;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.beans.Group;
import cn.fam.beans.IndPer;
import cn.fam.daoImp.GroupDaoImp;

@WebServlet("/GroupServlet")
public class GroupServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		IndPer indPer = (IndPer) request.getSession().getAttribute("indPer");
		String RegisterName = indPer.getRegisterName(); // 申请人的真实姓名
		String Password = indPer.getPassword();
		String City = request.getParameter("City");
		String Principal = request.getParameter("Principal");
		String Phone = request.getParameter("Phone");
		String Unit = request.getParameter("Unit");
		String Type = request.getParameter("Type");
		if (!City.equals("") && City != null && !Principal.equals("")
				&& Principal != null && !Phone.equals("") && Phone != null
				&& !Unit.equals("") && Unit != null && !Type.equals("")
				&& Type != null) {

			Group group = new Group();
			group.setRegisterName(RegisterName);
			group.setPassword(Password);
			group.setCity(City);
			group.setPrincipal(Principal);
			group.setPhone(Phone);
			group.setUnit(Unit);
			group.setType(Type);
			GroupDaoImp gdi = new GroupDaoImp();
			try {
				gdi.addGroup(group);
				request.setAttribute("msg1", "提交成功！");
				request.getRequestDispatcher("web/user/user_re.jsp").forward(request, response);//内部跳转
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			request.setAttribute("msg1", "提交失败！");
			request.getRequestDispatcher("web/user/user_re.jsp").forward(request, response);//内部跳转
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
