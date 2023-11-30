package com.booking.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.booking.dao.BoardDao;
import com.booking.dao.FileDao;
import com.booking.dto.FileDto;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	private SqlSession sqlsession;

	@Override
	@Transactional
	public void uploadFile(MultipartFile file, Long boardId) throws IOException {
		FileDao boardDao = sqlsession.getMapper(FileDao.class);
		String uploadPath = "/path/to/upload/directory/";// "D:\\zzz\\upload"
		// 파일 저장
		String fileName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
		Path filePath = Paths.get(uploadPath + fileName);
		Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

		// 파일 정보 저장
		FileDto files = new FileDto();
		files.setBoardId(boardId);
		files.setFileName(fileName);
		files.setFilePath(filePath.toString());

		boardDao.insertFile(files);
	}

	@Override
	public FileDto getFileById(Long fileId) throws Exception {
		FileDao boardDao = sqlsession.getMapper(FileDao.class);
		return boardDao.getFileById(fileId);
	}

}
