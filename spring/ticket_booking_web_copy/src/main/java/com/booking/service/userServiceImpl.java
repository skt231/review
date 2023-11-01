package com.booking.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booking.dao.userDao;
import com.booking.dto.userDto;

@Service
public class userServiceImpl implements userService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void addUser(userDto user) throws Exception {
		userDao dao=sqlSession.getMapper(userDao.class);
		dao.createUser(user);

	}

	@Override
	public userDto getUserById(int id) throws Exception {
		userDao dao=sqlSession.getMapper(userDao.class);
		return dao.readUserById(id);
	}

	@Override
	public void updateUser(userDto user) throws Exception {
		userDao dao=sqlSession.getMapper(userDao.class);
		dao.updateUser(user);
	}

	@Override
	public void deleteUser(int id) throws Exception {
		userDao dao=sqlSession.getMapper(userDao.class);
		dao.deleteUser(id);
	}

	@Override
	public List<userDto> getAllUsers() throws Exception {
		userDao dao=sqlSession.getMapper(userDao.class);
		List<userDto> dtos=dao.listAll();
		System.out.println(dtos);
		return dtos;
	}

}
