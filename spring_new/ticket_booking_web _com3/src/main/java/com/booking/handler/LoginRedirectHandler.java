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

	    // 추가된 로그: 메서드 호출 확인
	    System.out.println("LoginRedirectHandler - onAuthenticationSuccess method called.");

	    List<String> roleNames = new ArrayList<>();
	    // 추가된 로그: 권한 정보 확인
	    System.out.println("Authentication Authorities: " + authentication.getAuthorities());

	    // SecurityContext에 Authentication 객체 설정
	    SecurityContextHolder.getContext().setAuthentication(authentication);

	    authentication.getAuthorities().forEach(authority -> {
	        roleNames.add(authority.getAuthority());
	        System.out.println("==role.authority==" + authority.getAuthority());
	    });

	    if (roleNames.contains("ROLE_ADMIN")) {
	        response.sendRedirect("/app/admin/admin");
	        return;
	    }
	    if (roleNames.contains("ROLE_MEMBER")) {
	        response.sendRedirect("/app/member/member");
	        return;
	    }
	    // 권한이 없는 경우 처리
	    response.sendRedirect("/"); // 기본적으로는 다시 대시보드 페이지로 이동
	}

}
