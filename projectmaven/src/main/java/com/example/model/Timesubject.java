package com.example.model;

// Generated Aug 23, 2015 10:23:27 PM by Hibernate Tools 3.4.0.CR1

/**
 * Timesubject generated by hbm2java
 */
public class Timesubject implements java.io.Serializable {

	private TimesubjectId id;
	private Subject subject;

	public Timesubject() {
	}

	public Timesubject(TimesubjectId id) {
		this.id = id;
	}

	public Timesubject(TimesubjectId id, Subject subject) {
		this.id = id;
		this.subject = subject;
	}

	public TimesubjectId getId() {
		return this.id;
	}

	public void setId(TimesubjectId id) {
		this.id = id;
	}

	public Subject getSubject() {
		return this.subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

}