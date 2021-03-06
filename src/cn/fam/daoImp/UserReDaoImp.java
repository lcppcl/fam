package cn.fam.daoImp;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;

import cn.fam.beans.AppInfo;
import cn.fam.dao.UserReDao;
import cn.fam.dbutil.DbUtil;

public class UserReDaoImp implements UserReDao{

	private static DbUtil dbUtil = new DbUtil();
	@Override
	public void add(AppInfo appInfo) throws Exception {
		Connection con = dbUtil.getCon(); // ��ȡ����
		String sql = "insert into application_information values(null,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, appInfo.getType());
		pstmt.setString(2, appInfo.getHonour());
		pstmt.setDate(3, new java.sql.Date(0));
		pstmt.setString(4, appInfo.getApplyName());
		pstmt.setString(5, appInfo.getApplyReason());
		pstmt.setString(6, appInfo.getApplyResult());
		pstmt.setString(7, appInfo.getTreatment());
		int i = pstmt.executeUpdate();
		dbUtil.close(pstmt, con);
	}

}
