package cn.fam.servive;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.beans.IndPer;
import cn.fam.beans.VerInfo;
import cn.fam.daoImp.GetEamilImp;

/**
 * Servlet implementation class ForgetPwd
 */
@WebServlet("/ForgetPwd")
public class ForgetPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		GetEamilImp getEamil = new GetEamilImp();
		System.out.println(email.length());
		
		//13λ�����жϣ�����Ա13λ����verifier
		if(email.length()==13){
			//����������˺�
			VerInfo verInfo = getEamil.getInforManager(email);
			System.out.println(verInfo.getPassword());
			System.out.println(verInfo.getUserName());
			request.getSession().setAttribute("verInfo", verInfo);
			response.sendRedirect("web/EmailYes.jsp");
			
		}
		
		//14λ�����жϣ�����������individual_person
		else if(email.length()==14){
			IndPer in = getEamil.getInfo(email);
			System.out.println(in.getPassword());
			System.out.println(in.getRegisterName());
			request.getSession().setAttribute("in", in);
			response.sendRedirect("web/InEmailYes.jsp");
		}
		else{
			response.sendRedirect("web/EamilError.jsp");
		}
		
	}

}
