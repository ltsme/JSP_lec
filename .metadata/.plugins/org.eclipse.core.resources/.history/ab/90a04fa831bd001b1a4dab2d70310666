package com.watchdogs.command.adopt;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.watchdogs.command.home.BCommand;
import com.watchdogs.dao.BDaoAdopt;
import com.watchdogs.dto.BDtoAdopt;

public class BAdoptcommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
       
		String id= request.getParameter("id");

		BDaoAdopt daoadopt = new BDaoAdopt();
		ArrayList<BDtoAdopt> dtosadopt = daoadopt.adoptwait();
  
        request.setAttribute("adoptwait", dtosadopt);
       
	}

}
