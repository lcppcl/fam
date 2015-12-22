package cn.fam.servive;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.beans.IndPer;
import cn.fam.daoImp.ModUserDaoImp;

//修改个人信息
@WebServlet("/ModUserServlet")
public class ModUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		IndPer indPer = (IndPer) request.getSession().getAttribute("indPer");
		String Phone = request.getParameter("Phone");
		String WorkSpace = request.getParameter("WorkSpace");
		String Political = request.getParameter("Political");
		String username = indPer.getRegisterName();
		if(!Phone.equals("") && Phone!=null
				&&!WorkSpace.equals("") && WorkSpace!=null
				&&!Political.equals("") && Political!=null){
			ModUserDaoImp mudi = new ModUserDaoImp();
			try {
				mudi.modUser(Phone, WorkSpace, Political, username);
				request.setAttribute("msg1", "修改成功");
				request.getRequestDispatcher("web/user/info_re.jsp").forward(request, response);//内部跳转
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			request.setAttribute("msg1", "修改失败");
			request.getRequestDispatcher("web/user/info_re.jsp").forward(request, response);//内部跳转
		}
	}

	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
