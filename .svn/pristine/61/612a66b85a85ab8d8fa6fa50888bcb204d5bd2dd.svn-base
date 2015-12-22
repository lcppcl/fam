package cn.fam.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.fam.beans.IndPer;
import cn.fam.beans.VerInfo;
import cn.fam.beans.Worker;
import cn.fam.dao.GetEamil;
import cn.fam.dbutil.DbUtil;

public class GetEamilImp implements GetEamil {
	private static DbUtil dbUtil = new DbUtil();
	IndPer in;//独立人
	VerInfo ver;//管理员
	
	//获取管理员的密码和账号
	@Override
	public VerInfo getInforManager(String email) {
		try {
			Connection con = dbUtil.getCon();
			String sql ="select * from verifier where Email=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				ver = new VerInfo();
				ver.setPassword(rs.getString("Password"));
				ver.setUserName(rs.getString("UserName"));
			}
			rs.close();
			dbUtil.close(ps, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ver;
	}

	
	//获取独立个人的密码和账号IndPer
	@Override
	public IndPer getInfo(String email) {
		try {
			Connection con = dbUtil.getCon();
			String sql ="select * from individual_person where Email=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				in = new IndPer();
				in.setPassword(rs.getString("Password"));
				in.setRegisterName(rs.getString("RegisterName"));
			}
			rs.close();
			dbUtil.close(ps, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return in;
	}

}
