
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

public class BDao {
	
	DataSource dataSource; //javax.sql
	
	public BDao() {
		try {
			Context context = new InitialContext();// javax.naming , context.xml과 연결
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc"); // context.xml의 내용을 불러옴
			
		}catch(Exception e){
			e.printStackTrace(); // error code 출력
		}
	}

	
	//게시글 목록 출력
	public ArrayList<BDto> list(){ // 검색
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		Connection connection = null;// java.sql
		PreparedStatement preparedStatement = null; // java.sql
		ResultSet resultSet = null; // java.sql
		
		try {
			connection = dataSource.getConnection(); // 연결
			
			String query = "select bId, bName, bTitle, bContent, bDate from mvc_board"; // 쿼리문 작성
			preparedStatement = connection.prepareStatement(query);
			
			resultSet = preparedStatement.executeQuery(); // 쿼리문 실행
			
			while(resultSet.next()) {
				int bId = resultSet.getInt("bId"); // DB에서 불러오기, ==int bId = resultSet.getInt("1");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate"); //java.sql
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate); // ArrayList 생성
				dtos.add(dto); // ArrayList에 저장(메모리)
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close(); // 실행이 잘되었다면, 실행종료
				if(preparedStatement!=null) preparedStatement.close(); // 실행이 잘되었다면, 실행종료
				if(connection != null) connection.close(); //실행이 잘되었다면, 실행종료
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return dtos;
	}
	
	
	//게시글 작성 페이지
	public void  write(String bName, String bTitle, String bContent) {
		
		Connection connection = null;// java.sql
		PreparedStatement preparedStatement = null; // java.sql
				
		try {
			connection = dataSource.getConnection(); // 연결
			
			String query = "insert into mvc_board (bName, bTitle, bContent, bDate) values (?, ?, ?, now())"; // 쿼리문 작성
			preparedStatement = connection.prepareStatement(query);
						
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			
			
			preparedStatement.executeUpdate(); // update 실행
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement!=null) preparedStatement.close(); // 실행이 잘되었다면, 실행종료
				if(connection != null) connection.close(); //실행이 잘되었다면, 실행종료
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}
	
	
	//게시글 내용 보기
	public BDto contentView(String strID){ 
		BDto dto = null;
		Connection connection = null;// java.sql
		PreparedStatement preparedStatement = null; // java.sql
		ResultSet resultSet = null; // java.sql
		
		try {
			connection = dataSource.getConnection(); // 연결
			String query = "select * from mvc_board where bId = ?"; // 쿼리문 작성
						
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(strID));
			
			resultSet = preparedStatement.executeQuery(); // 쿼리문 실행
			
			if(resultSet.next()) { //1번만 실행하기 위해 if문
				int bId = resultSet.getInt("bId"); // DB에서 불러오기, ==int bId = resultSet.getInt("1");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate"); //java.sql
				
				dto = new BDto(bId, bName, bTitle, bContent, bDate); // ArrayList 생성
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close(); // 실행이 잘되었다면, 실행종료
				if(preparedStatement!=null) preparedStatement.close(); // 실행이 잘되었다면, 실행종료
				if(connection != null) connection.close(); //실행이 잘되었다면, 실행종료
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return dto;
	}
	
	
	//게시글 삭제
	public void delete(String strID) {
		
		Connection connection = null;// java.sql
		PreparedStatement preparedStatement = null; // java.sql
				
		try {
			connection = dataSource.getConnection(); // 연결
			
			String query = "delete from mvc_board where bId = ?"; // 쿼리문 작성
			
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(strID));
						
			preparedStatement.executeUpdate(); // update 실행
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement!=null) preparedStatement.close(); // 실행이 잘되었다면, 실행종료
				if(connection != null) connection.close(); //실행이 잘되었다면, 실행종료
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}
	
	
	//게시글 수정
	public void edit(String bName, String bTitle, String bContent, String strID) {
		
		Connection connection = null;// java.sql
		PreparedStatement preparedStatement = null; // java.sql
				
		try {
			connection = dataSource.getConnection(); // 연결
			
			String query = "update  mvc_board  set bName=?, bTitle=?, bContent=?, bDate=now() where bId = ?"; // 쿼리문 작성
			preparedStatement = connection.prepareStatement(query);
						
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			preparedStatement.setInt(4, Integer.parseInt(strID));
			
			
			preparedStatement.executeUpdate(); // update 실행
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement!=null) preparedStatement.close(); // 실행이 잘되었다면, 실행종료
				if(connection != null) connection.close(); //실행이 잘되었다면, 실행종료
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}
	
	
}