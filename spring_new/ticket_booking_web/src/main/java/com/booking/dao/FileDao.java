package com.booking.dao;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.booking.dto.FileDto;

public interface FileDao {
	public void insertFile(FileDto fileDTO) throws IOException;

	public FileDto getFileById(Long fileId) throws Exception;
}
