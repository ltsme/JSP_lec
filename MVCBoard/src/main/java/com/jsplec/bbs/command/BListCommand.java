package com.jsplec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;
import com.jsplec.bbs.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute (HttpServletRequest request, HttpServletResponse response) {
		// DB에서 전체정보 읽어서 attribute로 jsp에 전달하기
		
		BDao dao = new BDao(); // BDao와 연결
		ArrayList<BDto> dtos = dao.list(); // arraylist에 추가 <-BDao의 list 메소드 실행 
		request.setAttribute("list", dtos); // list(변수이름)에 dtos 대입
	}

}