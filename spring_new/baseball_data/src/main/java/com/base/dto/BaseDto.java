package com.base.dto;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

public class BaseDto {
	private String name;
	private int age;
	private double height;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private LocalDateTime birthday;

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

	@Override
	public String toString() {
		return "BaseDto [name=" + name + ", age=" + age + ", height=" + height + ", birthday=" + birthday + "]";
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public LocalDateTime getBirthday() {
		return birthday;
	}

	public void setBirthday(LocalDateTime birthday) {
		this.birthday = birthday;
	}

}
