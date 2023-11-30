package com.booking.dto;

public class AuthoritiesDto {
	private Long id;
	private String authority;

	public AuthoritiesDto() {
	};

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "AuthoritiesDto [id=" + id + ", authority=" + authority + "]";
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
}
