package cn.fam.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cn.fam.dao.UserUpPwdDao;
import cn.fam.dbutil.DbUtil;

public class UserUpPwdDaoImp implements UserUpPwdDao {

	private static DbUtil dbUtil = new DbUtil();

	@Override
	public void upPwd(String pwd, String RegisterName) throws Exception {
		Connection con = dbUtil.getCon(); // 获取连接
		String sql = "update individual_person set Password=? where RegisterName=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, pwd);
		pstmt.setString(2, RegisterName);
		int rs = pstmt.executeUpdate();
		dbUtil.close(pstmt, con);
	}

}
