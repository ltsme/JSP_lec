package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;

public class BEditCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String bName = request.getParameter("bName"); // write_view.jsp의 내역을 가져옴
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		String bId = request.getParameter("bId");
		
		BDao dao = new BDao();
		dao.edit(bName, bTitle, bContent, bId);
	}

}