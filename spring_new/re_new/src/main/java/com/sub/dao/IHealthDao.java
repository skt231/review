package com.sub.dao;

import java.util.ArrayList;

import com.sub.dto.HealthDto;

public interface IHealthDao {
	public void insert(HealthDto dto) throws Exception;

	public void update(HealthDto dto) throws Exception;

	public void delete(String name) throws Exception;

	public ArrayList<HealthDto> selectAll() throws Exception;

	public HealthDto selectName(String name) throws Exception;
}
