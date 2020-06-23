package com.jsplec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.ODao;
import com.jsplec.bbs.dto.ODto;

public class OMainCommand implements OCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		ODao dao = new ODao();   //하자마자 데이터 연결됐다.
		
		ArrayList<ODto> dtos = dao.main();
		
		request.setAttribute("main", dtos);

	}

}
