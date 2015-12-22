package cn.fam.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.fam.beans.VerInfo;
import cn.fam.dao.VerInfoDao;
import cn.fam.dbutil.DbUtil;

public class VerInfoDaoImp implements VerInfoDao{

	private static DbUtil dbUtil = new DbUtil();
	@Override
	public VerInfo findVer(String name, String password) throws Exception {
		Connection con = dbUtil.getCon(); // 获取连接
		VerInfo verInfo = null;
		String sql = "select * from verifier where UserName=? and Password=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		ResultSet rs = pstmt.executeQuery(); // 返回结果集ResultSet
		while (rs.next()) {
			verInfo = new VerInfo();
			verInfo.setUserName(name);
			verInfo.setPassword(password);
		}
		rs.close();
		// 关闭链接
		dbUtil.close(pstmt, con);
		return verInfo;
	}
	public void UpdatePwd(String name,String password){
		try {
			Connection con = dbUtil.getCon();
			String sql = "update verifier set Password = ? where UserName=? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, password);
			ps.setString(2,name);
			ps.executeUpdate();
			dbUtil.close(ps, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
