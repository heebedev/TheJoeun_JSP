package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.ODao;

public class ODeleteCommand implements OCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		int seq = Integer.parseInt(request.getParameter("seq"));
		
		ODao dao = new ODao();   //하자마자 데이터 연결됐다.
		
		dao.delete(seq);
		
	}

}