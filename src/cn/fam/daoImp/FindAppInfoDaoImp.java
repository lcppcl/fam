package cn.fam.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.fam.beans.AppInfo;
import cn.fam.dao.FindAppInfoDao;
import cn.fam.dbutil.DbUtil;

public class FindAppInfoDaoImp implements FindAppInfoDao{

	private static DbUtil dbUtil = new DbUtil();
	@Override
	public List findAppInfo(String ApplyName) throws Exception {
		Connection con = dbUtil.getCon(); // ��ȡ����
		String sql = "select * from application_information where ApplyName=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, ApplyName);
		ResultSet rs = pstmt.executeQuery(); // ���ؽ����ResultSet
		List al = new ArrayList();
		AppInfo appInfo;
		while (rs.next()) {
			appInfo = new AppInfo();
			appInfo.setApplyName(rs.getString("ApplyName"));;
			appInfo.setTreatment(rs.getString("Treatment"));
			appInfo.setApplyResult(rs.getString("ApplyResult"));
			appInfo.setHonour(rs.getString("Honour"));
			al.add(appInfo);
		}
		// �ر�����
		dbUtil.close(pstmt, con);
		return al;
	}

}