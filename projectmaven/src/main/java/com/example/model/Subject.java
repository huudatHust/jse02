package com.example.model;

// Generated Aug 23, 2015 10:23:27 PM by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Subject generated by hbm2java
 */
public class Subject implements java.io.Serializable {

	private String id;
	private String name;
	private Integer numTc;
	private String notes;
	private Set students = new HashSet(0);
	private Set timesubjects = new HashSet(0);

	public Subject() {
	}

	public Subject(String id, String name) {
		this.id = id;
		this.name = name;
	}

	public Subject(String id, String name, Integer numTc, String notes,
			Set students, Set timesubjects) {
		this.id = id;
		this.name = name;
		this.numTc = numTc;
		this.notes = notes;
		this.students = students;
		this.timesubjects = timesubjects;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getNumTc() {
		return this.numTc;
	}

	public void setNumTc(Integer numTc) {
		this.numTc = numTc;
	}

	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Set getStudents() {
		return this.students;
	}

	public void setStudents(Set students) {
		this.students = students;
	}

	public Set getTimesubjects() {
		return this.timesubjects;
	}

	public void setTimesubjects(Set timesubjects) {
		this.timesubjects = timesubjects;
	}

}
