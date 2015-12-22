package cn.fam.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cn.fam.dao.DelAppInfoDao;
import cn.fam.dbutil.DbUtil;

public class DelAppInfo implements DelAppInfoDao{
	private static DbUtil dbUtil = new DbUtil();
	@Override
	public void delAppInfo(String Honour) throws Exception {
		// TODO Auto-generated method stub
		Connection con = dbUtil.getCon(); // ��ȡ����
		String sql = "delete from application_information where Honour=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, Honour);
		int rs = pstmt.executeUpdate(); // ���ؽ����ResultSet
		// �ر�����
		dbUtil.close(pstmt, con);
	}
	
}