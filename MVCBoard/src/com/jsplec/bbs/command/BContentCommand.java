package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.bDao;
import com.jsplec.bbs.dto.BDto;

public class BContentCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String bId = request.getParameter("bId");
		
		bDao dao = new bDao();   //하자마자 데이터 연결됐다.
		
		BDto dtos = dao.contentView(bId);
		
		request.setAttribute("content_view", dtos);
		
		 
		

	}

}



