package cn.fam.dao;

import cn.fam.beans.IndPer;
import cn.fam.beans.VerInfo;
import cn.fam.beans.Worker;

public interface GetEamil {
	//获取登陆名和密码
	public IndPer getInfo(String email);
	public VerInfo getInforManager(String email);
}
