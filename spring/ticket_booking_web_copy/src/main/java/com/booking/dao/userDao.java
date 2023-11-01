package com.booking.dao;

import java.util.List;

import com.booking.dto.userDto;

public interface userDao {
	public void createUser(userDto user) throws Exception;

	public  userDto readUserById(Integer id) throws Exception;

	public void updateUser(userDto user) throws Exception;

	public void deleteUser(Integer id) throws Exception;

	public List<userDto> listAll() throws Exception;
}
