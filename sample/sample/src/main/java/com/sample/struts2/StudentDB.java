package com.sample.struts2;

import java.util.ArrayList;

public class StudentDB {

	private static StudentDB instance = new StudentDB();

	private ArrayList<Student> studentList = new ArrayList<>();

	private StudentDB() {
	}

	public static StudentDB getInstance() {
		return instance;
	}

	public void addStudent(Student student) {
		studentList.add(student);
	}

	public ArrayList<Student> getStudentList() {
		return studentList;
	}

}
