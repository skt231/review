package com.base.dao;

import java.util.ArrayList;

import com.base.dto.BaseDto;

public interface IBaseDao {
	public void insert(BaseDto dto) throws Exception;

	public void update(BaseDto dto) throws Exception;

	public void delete(String name) throws Exception;

	public ArrayList<BaseDto> selectAll() throws Exception;

	public BaseDto selectName(String name) throws Exception;
}
