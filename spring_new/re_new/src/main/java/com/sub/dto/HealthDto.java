package com.sub.dto;

public class HealthDto {
	private String name;
	private int age;
	private double height;
	private double weight;
	private double bmi;
	private String bmi_note;

	public HealthDto(){};
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public double getBmi() {
		return bmi;
	}
	public HealthDto(String name, int age, double height, double weight, double bmi, String bmi_note) {
		super();
		this.name = name;
		this.age = age;
		this.height = height;
		this.weight = weight;
		this.bmi = bmi;
		this.bmi_note = bmi_note;
	}
	@Override
	public String toString() {
		return "HealthDto [name=" + name + ", age=" + age + ", height=" + height + ", weight=" + weight + ", bmi=" + bmi
				+ ", bmi_note=" + bmi_note + "]";
	}
	public void setBmi(double bmi) {
		this.bmi = bmi;
	}
	public String getBmi_note() {
		return bmi_note;
	}
	public void setBmi_note(String bmi_note) {
		this.bmi_note = bmi_note;
	}
	
}
