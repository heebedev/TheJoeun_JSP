package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsplec.bbs.dto.BDto;

public class bDao {
	
	DataSource dataSource;
	
	public bDao() {
		// try를 쓴다....->자바가 아니라 다른 걸 쓰는구나.....
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc");
		} catch(Exception e) {
			e.printStackTrace();
		}
		// 컨스트럭터로 소환시 데이터베이스 우선 연결하고 보자
	
	}
	
	
	public ArrayList<BDto> list() {
		
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			
			connection = dataSource.getConnection();
			String query = "select bId, bName, bTitle, bContent, bDate from board";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int bId = resultSet.getInt("bId");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate);
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
	
	
	public void write(String bName, String bTitle, String bContent) {
			
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			
			try {
				
				connection = dataSource.getConnection();
				String query = "insert into board (bName, bTitle, bContent, bDate) values (?, ?, ?, now())";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, bName);
				preparedStatement.setString(2, bTitle);
				preparedStatement.setString(3, bContent);
				
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
	
	public BDto contentView(String bID) {
		
		BDto dtos = new BDto();
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			int bId = Integer.parseInt(bID);
			connection = dataSource.getConnection();
			String query = "select bId, bName, bTitle, bContent, bDate from board where bId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, bId);
			resultSet = preparedStatement.executeQuery();
			
			if (resultSet.next()) {
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				
				
				dtos.setbId(bId);
				dtos.setbName(bName);
				dtos.setbTitle(bTitle);
				dtos.setbContent(bContent);
				dtos.setbDate(bDate);
				
//				System.out.println("1__"+Integer.toString(dtos.getbId()));
//				System.out.println("1__"+dtos.getbName());
//				System.out.println("1__"+dtos.getbTitle());
//				System.out.println("1__"+dtos.getbContent());
//				System.out.println("1__"+dtos.getbDate().toString());
				

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
	
	public void update(int bId, String bName, String bTitle, String bContent) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			connection = dataSource.getConnection();
			String query = "update board set bName = ? ,bTitle = ? ,bContent = ? where bId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			preparedStatement.setInt(4, bId);
			
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
	
	
	public void delete(int bId) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			connection = dataSource.getConnection();
			String query = "delete from board where bId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, bId);
			
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
