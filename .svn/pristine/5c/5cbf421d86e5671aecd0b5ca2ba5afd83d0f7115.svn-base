package cn.fam.servive;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.beans.AppInfo;
import cn.fam.beans.IndPer;
import cn.fam.daoImp.UserReDaoImp;

@WebServlet("/User_reServlet")
public class User_reServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		IndPer indPer = (IndPer) request.getSession().getAttribute("indPer");
		String Honour = request.getParameter("Honour");
		String ApplyName = request.getParameter("ApplyName");
		String Treatment = request.getParameter("Treatment");
		String ApplyReason = request.getParameter("ApplyReason");
		if (!Honour.equals("")
				&& Honour != null 
				&& !ApplyName.equals("")
				&& ApplyName != null && !Treatment.equals("")
				&& Treatment != null && !ApplyReason.equals("")
				&& ApplyReason != null) {
			UserReDaoImp urdi = new UserReDaoImp();
			String name = indPer.getRealName();
			if (ApplyName.equals(indPer.getRealName())) {
				AppInfo appInfo = new AppInfo();
				appInfo.setType(indPer.getType());
				appInfo.setHonour(Honour);
				//appInfo.setApplyDate(new Date());
				appInfo.setApplyName(ApplyName);
				appInfo.setApplyReason(ApplyReason);
				appInfo.setApplyResult("未审核");
				appInfo.setTreatment(Treatment);
				try {
					urdi.add(appInfo);
					request.getRequestDispatcher("/FindAppInfoServlet").forward(request, response);//内部跳转
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {
				request.setAttribute("msg1", "申请出错");
				request.getRequestDispatcher("web/user/user_re.jsp").forward(request, response);//内部跳转
			}
		} else {

			request.setAttribute("msg1", "申请出错");
			request.getRequestDispatcher("web/user/user_re.jsp").forward(request, response);//内部跳转
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
