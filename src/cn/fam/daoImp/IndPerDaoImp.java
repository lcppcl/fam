package cn.fam.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.fam.beans.IndPer;
import cn.fam.dao.IndPerDao;
import cn.fam.dbutil.DbUtil;

public class IndPerDaoImp implements IndPerDao {

	private static DbUtil dbUtil = new DbUtil();
	IndPer indPer;

	@Override
	public IndPer findInvPer(String RegisterName, String Password)
			throws Exception {
		Connection con = dbUtil.getCon(); // 获取连接
		String sql = "select * from individual_person where RegisterName=? and Password=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, RegisterName);
		pstmt.setString(2, Password);
		ResultSet rs = pstmt.executeQuery(); // 返回结果集ResultSet
		while (rs.next()) {
			indPer = new IndPer();
			indPer.setRegisterName(RegisterName);
			indPer.setPassword(Password);
			indPer.setRealName(rs.getString("RealName"));
			indPer.setSex(rs.getString("Sex"));
			indPer.setNation(rs.getString("Nation"));
			indPer.setWorkSpace(rs.getString("WorkSpace"));
			indPer.setIdCare(rs.getString("IdCare"));
			indPer.setEducation(rs.getString("Education"));
			indPer.setPolitical(rs.getString("Political"));
			indPer.setPhone(rs.getString("Phone"));
			indPer.setType(rs.getString("type"));
		}
		// 关闭链接
		dbUtil.close(pstmt, con);
		return indPer;
	}

	@Override
	public void addIndPer(IndPer ivdPer) throws Exception {
		// TODO Auto-generated method stub
		Connection con = dbUtil.getCon(); // 获取连接
		String sql = "insert into individual_person values(null,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, ivdPer.getRegisterName());
		pstmt.setString(2, ivdPer.getPassword());
		pstmt.setString(3, ivdPer.getRealName());
		pstmt.setString(4, ivdPer.getSex());
		pstmt.setString(5, ivdPer.getNation());
		pstmt.setString(6, ivdPer.getWorkSpace());
		pstmt.setString(7, ivdPer.getIdCare());
		pstmt.setString(8, ivdPer.getEducation());
		pstmt.setString(9, ivdPer.getPolitical());
		pstmt.setString(10, ivdPer.getPhone());
		pstmt.setString(11, ivdPer.getType());
		pstmt.setString(12, ivdPer.getEmail());
		int i = pstmt.executeUpdate();
		dbUtil.close(pstmt, con);
	}
}
