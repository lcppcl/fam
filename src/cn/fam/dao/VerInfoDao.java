package cn.fam.dao;

import cn.fam.beans.VerInfo;

public interface VerInfoDao {
	//获取管理员信息
	public VerInfo findVer(String name,String password)throws Exception;
	
}
