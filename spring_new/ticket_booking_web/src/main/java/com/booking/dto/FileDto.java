package com.booking.dto;

public class FileDto {
	private Long fileId;
	private Long boardId;
	private String fileName;
	private Long fileSize;
	private String filePath;

	public FileDto() {
	};

	public Long getFileId() {
		return fileId;
	}

	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public Long getFilesize() {
		return fileSize;
	}

	public void setFilesize(Long filesize) {
		this.fileSize = filesize;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
}
