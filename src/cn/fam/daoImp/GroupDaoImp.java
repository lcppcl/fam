package cn.fam.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cn.fam.beans.Group;
import cn.fam.dao.GroupDao;
import cn.fam.dbutil.DbUtil;

public class GroupDaoImp implements GroupDao{

	private static DbUtil dbUtil = new DbUtil();
	@Override
	public void addGroup(Group group) throws Exception {
		Connection con = dbUtil.getCon(); // 获取连接
		String sql = "insert into collectivity values(null,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, group.getRegisterName());
		pstmt.setString(2, group.getPassword());
		pstmt.setString(3, group.getCity());
		pstmt.setString(4, group.getPrincipal());
		pstmt.setString(5, group.getPhone());
		pstmt.setString(6, group.getUnit());
		pstmt.setString(7, group.getType());
		int i = pstmt.executeUpdate();
		dbUtil.close(pstmt, con);

	}

}
