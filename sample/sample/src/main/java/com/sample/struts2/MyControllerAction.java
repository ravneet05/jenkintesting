package com.sample.struts2;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.opensymphony.xwork2.ActionSupport;

@Namespace("/Student")
@ResultPath("/")
@ParentPackage(value = "default")
public class MyControllerAction extends ActionSupport {

	private String username;
	private String password;

	@Override
	@Action(value = "login", results = { @Result(name = "success", location = "/student.jsp"),
			@Result(name = "error", location = "/error.jsp"), @Result(name = "input", location = "/student.jsp") })
	public String execute() throws Exception {
		System.out.println("Executed action...");
		System.out.println("User Name:" + getUsername());
		System.out.println("Password:" + getPassword());

		if ("maha".equals(getUsername()) && "maha".equals(getPassword())) {
			addActionMessage("Welcome to CoreNuts");
			return SUCCESS;
		} else {
			addActionError("Bad Credentials... Pleas re-login");
			return INPUT;
		}

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
