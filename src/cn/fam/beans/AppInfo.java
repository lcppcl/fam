package cn.fam.beans;

import java.io.Serializable;
import java.util.Date;

//申请个人荣誉信息
public class AppInfo implements Serializable{
	private int id;
	private String Type;   //用户类型
	private String Honour;//荣誉称号
	private Date ApplyDate;//申请时间
	private String ApplyName;//申请姓名
	private String ApplyReason;//申请理由
	private String ApplyResult;//申请结果
	private String Treatment;//待遇
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
