package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsplec.bbs.dto.ODto;

public class ODao {
	
	DataSource dataSource;
	
	public ODao() {
		// try를 쓴다....->자바가 아니라 다른 걸 쓰는구나.....
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/onelineboard");
		} catch(Exception e) {
			e.printStackTrace();
		}
		// 컨스트럭터로 소환시 데이터베이스 우선 연결하고 보자
	
	}
	
	
	public ArrayList<ODto> main() {
			
			ArrayList<ODto> dtos = new ArrayList<ODto>();
			
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			
			try {
				
				connection = dataSource.getConnection();
				String query = "select seq, name, title, date from board";
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					int seq = resultSet.getInt("seq");
					String name = resultSet.getString("name");
					String title = resultSet.getString("title");
					Timestamp date = resultSet.getTimestamp("date");
					
					ODto dto = new ODto(seq, name, title, date);
					dtos.add(dto);
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(resultSet != null) resultSet.close();
					if(preparedStatement != null) preparedStatement.close();
					if(connection != null) connection.close();
					
					//선언한 순서 반대로 클로즈 해주어야 에러 안걸림
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			return dtos;
			
		}
	
	
	
	public void write(String name, String title) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			connection = dataSource.getConnection();
			String query = "insert into board (name, title, date) values (?, ?, now())";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, title);
			
			preparedStatement.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
				
				//선언한 순서 반대로 클로즈 해주어야 에러 안걸림
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	
	
	public void delete(int seq) {
			
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			
			try {
				
				connection = dataSource.getConnection();
				String query = "delete from board where seq = ?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setInt(1, seq);
				
				preparedStatement.executeUpdate();
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(preparedStatement != null) preparedStatement.close();
					if(connection != null) connection.close();
					
					//선언한 순서 반대로 클로즈 해주어야 에러 안걸림
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			
		}
	
	
	
	

}
