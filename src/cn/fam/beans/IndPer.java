package cn.fam.beans;

import java.io.Serializable;
import java.sql.Date;

//������Ϣ
public class IndPer implements Serializable {
	private int id;
	private String RegisterName;// ��¼��
	private String Password;// ����
	private String RealName;// ��������
	private Date BirthDate;// ��������
	private String Sex;// �Ա�
	private String Nation;// ����
	private String WorkSpace;// �����ص�
	private String IdCare;// ����֤��
	private String Education;// �����̶�
	private String Political;// ������ò
	private String Phone;// �ֻ�����
	private String Type;// �û�����
	private String Email;
	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRegisterName() {
		return RegisterName;
	}

	public void setRegisterName(String registerName) {
		RegisterName = registerName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getRealName() {
		return RealName;
	}

	public void setRealName(String realName) {
		RealName = realName;
	}

	public Date getBirthDate() {
		return BirthDate;
	}

	public void setBirthDate(Date birthDate) {
		BirthDate = birthDate;
	}

	public String getSex() {
		return Sex;
	}

	public void setSex(String sex) {
		Sex = sex;
	}

	public String getNation() {
		return Nation;
	}

	public void setNation(String nation) {
		Nation = nation;
	}

	public String getWorkSpace() {
		return WorkSpace;
	}

	public void setWorkSpace(String workSpace) {
		WorkSpace = workSpace;
	}

	public String getIdCare() {
		return IdCare;
	}

	public void setIdCare(String idCare) {
		IdCare = idCare;
	}

	public String getEducation() {
		return Education;
	}

	public void setEducation(String education) {
		Education = education;
	}

	public String getPolitical() {
		return Political;
	}

	public void setPolitical(String political) {
		Political = political;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

}