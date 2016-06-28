package com.sample.struts2;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/Student")
@ResultPath("/")
@ParentPackage(value = "default")
public class StudentAction
		extends ActionSupport /* implements ModelDriven<Student> */ {

	private Student student = new Student();
	private List<Student> studentList;

	@Action(value = "saveStudent", results = { @Result(name = "success", location = "/studentList.jsp"),
			@Result(name = "error", location = "/error.jsp") })
	public String saveStudent() throws Exception {

		StudentDB.getInstance().addStudent(getStudent());
		studentList = StudentDB.getInstance().getStudentList();

		return SUCCESS;
	}

	public String editStudent() throws Exception {
		return SUCCESS;
	}

	public String deleteStudent() throws Exception {
		return SUCCESS;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	/*
	 * @Override public Student getModel() { return student; }
	 */

	public List<Student> getStudentList() {
		return studentList;
	}

	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}

}
