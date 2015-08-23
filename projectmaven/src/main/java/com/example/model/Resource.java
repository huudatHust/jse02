package com.example.model;

// Generated Aug 23, 2015 10:23:27 PM by Hibernate Tools 3.4.0.CR1

/**
 * Resource generated by hbm2java
 */
public class Resource implements java.io.Serializable {

	private String studentId;
	private Student student;
	private String account;
	private String vdi;
	private String mantis;

	public Resource() {
	}

	public Resource(Student student) {
		this.student = student;
	}

	public Resource(Student student, String account, String vdi, String mantis) {
		this.student = student;
		this.account = account;
		this.vdi = vdi;
		this.mantis = mantis;
	}

	public String getStudentId() {
		return this.studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getVdi() {
		return this.vdi;
	}

	public void setVdi(String vdi) {
		this.vdi = vdi;
	}

	public String getMantis() {
		return this.mantis;
	}

	public void setMantis(String mantis) {
		this.mantis = mantis;
	}

}