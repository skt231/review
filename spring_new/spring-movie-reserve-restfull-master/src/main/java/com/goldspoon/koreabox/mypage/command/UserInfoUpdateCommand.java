package com.goldspoon.koreabox.mypage.command;

import org.springframework.ui.Model;

import com.goldspoon.koreabox.mypage.MyPageQuery;
import com.goldspoon.koreabox.mypage.beans.IAjaxDAO;
import com.goldspoon.koreabox.mypage.beans.UserInfoDTO;


public class UserInfoUpdateCommand implements UserInfoCommand {

	// 커맨드 객체(request parameter들)를 "dto" 라는 이름으로 Model 에 담아 호출됨
	@Override
	public void execute(Model model) {
		// Model 안에 담긴 값(attribute) 꺼내기
				UserInfoDTO dto = (UserInfoDTO)model.getAttribute("dto");
				System.out.println("커맨드DTO : " + dto);
				
				// MyBatis 사용
				IAjaxDAO dao = MyPageQuery.sqlSession.getMapper(IAjaxDAO.class);
				
				// response 에 필요한 값들
				StringBuffer message = new StringBuffer();
				String status = "FAIL";
				
				int cnt = 0;
				try {			
					cnt = dao.updateOk(dto);
					if(cnt == 0) {
						message.append("[트랜잭션 실패: 0 insert]");
					} else {
						status = "OK";
					}
				} catch(Exception e) {
					e.printStackTrace();
					message.append("[트랜잭션 에러: " + e.getMessage() + "]");
				}
				
				model.addAttribute("status", status);
				model.addAttribute("message", message.toString());
				model.addAttribute("result", cnt);
	
	} // end execute()
} // end Command
















