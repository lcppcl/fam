package cn.fam.beans;

import java.io.Serializable;
import java.util.Date;

//�������������Ϣ
public class AppInfo implements Serializable{
	private int id;
	private String Type;   //�û�����
	private String Honour;//�����ƺ�
	private Date ApplyDate;//����ʱ��
	private String ApplyName;//��������
	private String ApplyReason;//��������
	private String ApplyResult;//������
	private String Treatment;//����
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public String getHonour() {
		return Honour;
	}
	public void setHonour(String honour) {
		Honour = honour;
	}
	public Date getApplyDate() {
		return ApplyDate;
	}
	public void setApplyDate(Date applyDate) {
		ApplyDate = applyDate;
	}
	public String getApplyName() {
		return ApplyName;
	}
	public void setApplyName(String applyName) {
		ApplyName = applyName;
	}
	public String getApplyReason() {
		return ApplyReason;
	}
	public void setApplyReason(String applyReason) {
		ApplyReason = applyReason;
	}
	public String getApplyResult() {
		return ApplyResult;
	}
	public void setApplyResult(String applyResult) {
		ApplyResult = applyResult;
	}
	public String getTreatment() {
		return Treatment;
	}
	public void setTreatment(String treatment) {
		Treatment = treatment;
	}
	
	
}
