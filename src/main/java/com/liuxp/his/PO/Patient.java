package com.liuxp.his.PO;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Patient {


	private int patientID;
	private String name;
	private String sex;
	private String identifyID;
	private Date birth;
	private int age;
	private String ageType;
	private String address;
	private Date createTime;

	public int getPatientID() {
		return patientID;
	}

	public void setPatientID(int patientID) {
		this.patientID = patientID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getIdentifyID() {
		return identifyID;
	}

	public void setIdentifyID(String identifyID) {
		this.identifyID = identifyID;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAgeType() {
		return ageType;
	}

	public void setAgeType(String ageType) {
		this.ageType = ageType;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "Patient{" +
				"patientID=" + patientID +
				", name='" + name + '\'' +
				", sex='" + sex + '\'' +
				", identifyID='" + identifyID + '\'' +
				", birth=" + birth +
				", age='" + age + '\'' +
				", ageType='" + ageType + '\'' +
				", address='" + address + '\'' +
				", createTime=" + createTime +
				'}';
	}
}