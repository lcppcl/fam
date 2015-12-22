package cn.fam.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.fam.beans.AppInfo;
import cn.fam.dao.AppInfoDao;
import cn.fam.dbutil.DbUtil;

public class AppInfoDaoImp implements AppInfoDao {
	List list = new ArrayList();
	private static DbUtil dbUtil = new DbUtil();
	/* (non-Javadoc)
	 * @see cn.fam.dao.AppInfoDao#SelectInfo()
	 */
	@Override
	public List SelectInfo() {
		try {
			//数据库连接
			Connection con = dbUtil.getCon();
			String sql = "select * from application_information";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet  rs = ps.executeQuery();
			while(rs.next()){
				AppInfo appInfo = new AppInfo();
				appInfo.setApplyName(rs.getString("ApplyName"));
				appInfo.setType(rs.getString("Type"));
				appInfo.setApplyResult(rs.getString("ApplyResult"));
				appInfo.setHonour(rs.getString("Honour"));
				appInfo.setApplyDate(rs.getDate("ApplyDate"));
				list.add(appInfo);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list ;
	}
	//设置审核通过
	@Override
	public void SetPass(String name) {
		try {
			//获取链接
			Connection con = dbUtil.getCon();
			String sql = "update application_information set ApplyResult = ? where ApplyName=? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "通过");
			ps.setString(2, name);
			ps.executeUpdate();
			dbUtil.close(ps, con);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public void DelInfo(String name) {
		try {
			Connection con = dbUtil.getCon();
			String sql = "delete  from application_information where ApplyName=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.executeUpdate();
			dbUtil.close(ps, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Override
	public String SetRol() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
