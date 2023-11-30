package com.booking.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.booking.dao.userDao;
import com.booking.dto.userDto;

@Service
public class userServiceImpl implements userService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void addUser(userDto user) throws Exception {
		userDao dao = sqlSession.getMapper(userDao.class);
		dao.createUser(user);

	}

	@Override
	public userDto getUserById(int id) throws Exception {
		userDao dao = sqlSession.getMapper(userDao.class);
		userDto user = dao.readUserById(id);
		return user;
	}

	@Override
	public void updateUser(userDto user) throws Exception {
		userDao dao = sqlSession.getMapper(userDao.class);
		dao.updateUser(user);
	}

	@Override
	public void deleteUser(int id) throws Exception {
		userDao dao = sqlSession.getMapper(userDao.class);
		dao.deleteUser(id);
	}

	@Override
	public List<userDto> getAllUsers() throws Exception {
		userDao dao = sqlSession.getMapper(userDao.class);
		List<userDto> dtos = dao.listAll();
		System.out.println(dtos);
		return dtos;
	}

	@Override
	public userDto loginUser(String username, String password) throws Exception {
		userDao dao = sqlSession.getMapper(userDao.class);
		userDto user = dao.getUserByUsername(username);

		if (user != null) {
			if (username.equals(user.getUsername())) {
				if (password.equals(user.getPassword())) {
					// 비밀번호가 일치하면 사용자 정보 반환
					return user;
				}
			}
		}

		// 사용자가 없거나 비밀번호가 일치하지 않을 경우 null 반환
		return null;
	}
}
