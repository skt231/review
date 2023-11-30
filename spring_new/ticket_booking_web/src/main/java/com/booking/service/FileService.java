package com.booking.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.booking.dto.FileDto;

public interface FileService {
	public void uploadFile(MultipartFile file, Long boardId) throws IOException;

	public FileDto getFileById(Long fileId) throws Exception;
}
