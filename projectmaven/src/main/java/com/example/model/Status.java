package com.example.model;

// Generated Aug 23, 2015 10:23:27 PM by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Status generated by hbm2java
 */
public class Status implements java.io.Serializable {

	private int id;
	private String name;
	private int stylePerson;
	private Set students = new HashSet(0);
	private Set events = new HashSet(0);
	private Set applicants = new HashSet(0);

	public Status() {
	}

	public Status(int id, String name, int stylePerson) {
		this.id = id;
		this.name = name;
		this.stylePerson = stylePerson;
	}

	public Status(int id, String name, int stylePerson, Set students,
			Set events, Set applicants) {
		this.id = id;
		this.name = name;
		this.stylePerson = stylePerson;
		this.students = students;
		this.events = events;
		this.applicants = applicants;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStylePerson() {
		return this.stylePerson;
	}

	public void setStylePerson(int stylePerson) {
		this.stylePerson = stylePerson;
	}

	public Set getStudents() {
		return this.students;
	}

	public void setStudents(Set students) {
		this.students = students;
	}

	public Set getEvents() {
		return this.events;
	}

	public void setEvents(Set events) {
		this.events = events;
	}

	public Set getApplicants() {
		return this.applicants;
	}

	public void setApplicants(Set applicants) {
		this.applicants = applicants;
	}

}