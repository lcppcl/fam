package cn.fam.servive;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.fam.daoImp.DelAppInfo;

/**
 * Servlet implementation class DelServlet
 */
@WebServlet("/DelServlet")
public class DelServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Honour = request.getParameter("honour");
		DelAppInfo del = new DelAppInfo();
		try {
			del.delAppInfo(Honour);
			request.setAttribute("msg1", "ɾ���ɹ�");
			request.getRequestDispatcher("/FindAppInfoServlet").forward(request, response);//�ڲ���ת
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}