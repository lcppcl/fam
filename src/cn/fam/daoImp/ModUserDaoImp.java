package cn.fam.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cn.fam.dao.ModUserDao;
import cn.fam.dbutil.DbUtil;

public class ModUserDaoImp implements ModUserDao{

	private static DbUtil dbUtil = new DbUtil();
	@Override
	public void modUser(String Phone, String WorkSpace, String Political,
			String username) throws Exception {
		Connection con = dbUtil.getCon(); // ��ȡ����
		String sql = "update individual_person set Phone=? , WorkSpace=?,Political=? where RegisterName=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, Phone);
		pstmt.setString(2, WorkSpace);
		pstmt.setString(3, Political);
		pstmt.setString(4, username);
		int rs = pstmt.executeUpdate();
		dbUtil.close(pstmt, con);
	}

}
