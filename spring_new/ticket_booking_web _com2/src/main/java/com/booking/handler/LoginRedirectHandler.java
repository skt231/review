package com.booking.handler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class LoginRedirectHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// 로그인에 성공하면 이동하는 페이지
		List<String> roleNames = new ArrayList<String>();
		// 권한들 읽어오기(로그인한 사람의)/roleNames에 추가
		authentication.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
			System.out.println("==role.authority==" + authority.getAuthority());
		});
		// 추가 코드: SecurityContextHolder에서 Authentication 객체 가져오기
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			Object principal = auth.getPrincipal();
			System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("==Principal==" + principal);
			System.out.println("==Authorities==" + auth.getAuthorities());
		}
		// 권한에 따라 페이지 이동
		if (roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/app/admin/admin");
			System.out.println("Redirecting to /app/admin/admin");
			return;
		}
		if (roleNames.contains("ROLE_MANAGER")) {
			response.sendRedirect("/app/admin/manager");
			System.out.println("Redirecting to /app/admin/manager");
			return;
		}
		if (roleNames.contains("ROLE_USER")) {
			response.sendRedirect("/app/user/user");
			System.out.println("Redirecting to /app/user/user");
			return;
		}
	}

}
