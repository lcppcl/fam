package cn.fam.dao;

import java.util.List;

public interface AppInfoDao {
	//��ѯ��������Ϣ
	public List SelectInfo();
	//����Ա����ͨ��
	public void SetPass(String name);
	//����Ա����ɾ��
	public void DelInfo(String name);
	//����Ա���ý�ɫ
	public String SetRol();

}
