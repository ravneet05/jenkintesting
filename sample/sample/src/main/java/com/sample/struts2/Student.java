package com.sample.struts2;

import java.util.Arrays;

public class Student {

	private String firstName;
	private String lastName;
	private String gender;
	private String[] visa;
	private String languange;
	private String desciption;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String[] getVisa() {
		return visa;
	}

	public void setVisa(String[] visa) {
		this.visa = visa;
	}

	public String getLanguange() {
		return languange;
	}

	public void setLanguange(String languange) {
		this.languange = languange;
	}

	public String getDesciption() {
		return desciption;
	}

	public void setDesciption(String desciption) {
		this.desciption = desciption;
	}

	@Override
	public String toString() {
		return "Student [firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender + ", visa="
				+ Arrays.toString(visa) + ", languange=" + languange + ", desciption=" + desciption + "]";
	}

}
