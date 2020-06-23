package com.jsplec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.bDao;
import com.jsplec.bbs.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		bDao dao = new bDao();   //하자마자 데이터 연결됐다.
		
		ArrayList<BDto> dtos = dao.list();
		
		request.setAttribute("list", dtos);
		
		//리퀘스트에 dtos 어레이리스트를 묶어서 보낸다.
		
		
		
	}


}
