package com.watchdogs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.watchdogs.dto.BDtoAdopt;

        public class BDaoAdopt {
        
        DataSource dataSource;
	
	   public BDaoAdopt() {
  		
	   try {
	   
	   Context context = new InitialContext();
	   dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc");
		
	   }catch(Exception e) {
	   e.printStackTrace();
	   }
	  } 
	   //.............................................adoptwait 시작 부분
	   public ArrayList<BDtoAdopt> adoptwait() {
	   
	   ArrayList<BDtoAdopt> dtosadopt = new ArrayList<BDtoAdopt>();     	   
		   
	   Connection connection = null;
	   PreparedStatement preparedStatement = null;
	   ResultSet resultSet = null;
		
	   try {
    
	   connection = dataSource.getConnection();
	
	   String query ="select dogid, dogname, doggender, dogdate, dogtraincomm, dogadopttst from dog where dogadopttst like '대기';";
	   preparedStatement = connection.prepareStatement(query);
	   resultSet = preparedStatement.executeQuery();
	   
	   System.out.println("윤희지 = 여기는 bdo" + dtosadopt); // 테스트용

	   while(resultSet.next()) {
		  
		   int dogid = resultSet.getInt("dogid");
		   String dogname = resultSet.getString("dogname");
		   String doggender = resultSet.getString("doggender");
		   String dogadopttst = resultSet.getString("dogadopttst");
		   String dogtraincomm = resultSet.getString("dogtraincomm");
		   Timestamp dogdate = resultSet.getTimestamp("dogdate");
		   
		  
		   
		   BDtoAdopt dtoadopt = new BDtoAdopt(dogid, dogname, dogadopttst, doggender,dogtraincomm, dogdate );
		   dtosadopt.add(dtoadopt);
				   
	   }
		   
	   }catch(Exception e) {
	   e.printStackTrace();
	   
	   }finally {
		
	   try {
			  
	   if(resultSet !=null) resultSet.close();
	   if(preparedStatement !=null) resultSet.close();
	   if(connection !=null) resultSet.close();
	   connection.close();
		  
	   }catch(Exception e) {
	   e.printStackTrace();
		   
	   }
	   }
	   return dtosadopt ;
	   
	   
	   } //......................................adoptwait 메소드 끝부분

	   
	   //............................................. adoptproceeding 시작 부분
	   public ArrayList<BDtoAdopt> adoptproceeding() {
	   
	   ArrayList<BDtoAdopt> dtosadopt = new ArrayList<BDtoAdopt>();     	   
		   
	   Connection connection = null;
	   PreparedStatement preparedStatement = null;
	   ResultSet resultSet = null;
		
	   try {
    
	   connection = dataSource.getConnection();

	   String query ="select dogid, dogname, doggender, dogdate, dogtraincomm, dogadopttst from dog where dogadopttst like '진행';";
	   preparedStatement = connection.prepareStatement(query);
	   resultSet = preparedStatement.executeQuery();
	   
	   System.out.println("윤희지 = 여기는 bdo" + dtosadopt); // 테스트용

	   while(resultSet.next()) {
		  
		   int dogid = resultSet.getInt("dogid");
		   String dogname = resultSet.getString("dogname");
		   String doggender = resultSet.getString("doggender");
		   String dogadopttst = resultSet.getString("dogadopttst");
		   String dogtraincomm = resultSet.getString("dogtraincomm");
		   Timestamp dogdate = resultSet.getTimestamp("dogdate");
		   
		  
		   
		   BDtoAdopt dtoadopt = new BDtoAdopt(dogid, dogname, dogadopttst, doggender,dogtraincomm, dogdate );
		   dtosadopt.add(dtoadopt);

		
		   System.out.println("윤희지 = 여기는 adoptproceeding " + dtosadopt); // 테스트용
				   
	   }
		   
	   }catch(Exception e) {
	   e.printStackTrace();
	   
	   }finally {
		
	   try {
			  
	   if(resultSet !=null) resultSet.close();
	   if(preparedStatement !=null) resultSet.close();
	   if(connection !=null) resultSet.close();
	   connection.close();
		  
	   }catch(Exception e) {
	   e.printStackTrace();
		   
	   }
	   }
	   return dtosadopt ;
	   
	   
	   } //......................................adoptproceeding 메소드 끝부분
	   
	   
	   
	   //............................................. adoptcomplete 시작 부분
	   public ArrayList<BDtoAdopt> adoptcomplete() {
	   
	   ArrayList<BDtoAdopt> dtosadopt = new ArrayList<BDtoAdopt>();     	   
		   
	   Connection connection = null;
	   PreparedStatement preparedStatement = null;
	   ResultSet resultSet = null;
		
	   try {
    
	   connection = dataSource.getConnection();
	  

	  	   
	   
	   
	   String query ="select dogid, dogname, doggender, dogdate, dogtraincomm, dogadopttst from dog where dogadopttst like '완료';";
	   preparedStatement = connection.prepareStatement(query);
	   resultSet = preparedStatement.executeQuery();
	   
	   System.out.println("윤희지 = 여기는 bdo" + dtosadopt); // 테스트용

	   while(resultSet.next()) {
		  
		   int dogid = resultSet.getInt("dogid");
		   String dogname = resultSet.getString("dogname");
		   String doggender = resultSet.getString("doggender");
		   String dogadopttst = resultSet.getString("dogadopttst");
		   String dogtraincomm = resultSet.getString("dogtraincomm");
		   Timestamp dogdate = resultSet.getTimestamp("dogdate");
		   
		  
		   
		   BDtoAdopt dtoadopt = new BDtoAdopt(dogid, dogname, dogadopttst, doggender,dogtraincomm, dogdate );
		   dtosadopt.add(dtoadopt);

		   System.out.println("윤희지 = 여기는 adoptcomplete " + dtosadopt); // 테스트용
				   
	   }
		   
	   }catch(Exception e) {
	   e.printStackTrace();
	   
	   }finally {
		
	   try {
			  
	   if(resultSet !=null) resultSet.close();
	   if(preparedStatement !=null) resultSet.close();
	   if(connection !=null) resultSet.close();
	   connection.close();
		  
	   }catch(Exception e) {
	   e.printStackTrace();
		   
	   }
	   }
	   return dtosadopt ;
	   
	   
	   } //......................................adoptproceeding 메소드 끝부분
	   
	 //......................................adoptwait_02 메소드 시작부분
	   
	   public ArrayList<BDtoAdopt> adoptwait_02(int strid) {
		   
		   ArrayList<BDtoAdopt> dtosadopt = new ArrayList<BDtoAdopt>();     	     // 강아지 정보
//		   ArrayList<BDtoAdopt> dtosadopt2 = new ArrayList<BDtoAdopt>();             //훈련사  이름
		   
		   
////////////////////////////////////////////////////////////////
		   
		   Connection connection = null;
		   PreparedStatement preparedStatement = null;                    //일반 정보를 얻기 위함
		   ResultSet resultSet = null;
		   

		   
		   
		   try {
	    
		   connection = dataSource.getConnection();

		   
		   String query ="select dogid, dogname, doggender, dogdate, dogtraincomm, dogadopttst from dog where dogid = ?;";
		   preparedStatement = connection.prepareStatement(query);
		   preparedStatement.setInt(1, strid);
		   resultSet = preparedStatement.executeQuery();
		   
		   System.out.println("윤희지 = 여기는 테스트 제잘" + dtosadopt); // 테스트용

//		 
			   
		   if(resultSet.next()) {
			   int dogid = resultSet.getInt("dogid");
			   String dogname = resultSet.getString("dogname");
			   String doggender = resultSet.getString("doggender");
			   String dogadopttst = resultSet.getString("dogadopttst");
			   String dogtraincomm = resultSet.getString("dogtraincomm");
			   Timestamp dogdate = resultSet.getTimestamp("dogdate");
			   
			  
			   
			   BDtoAdopt dtoadopt = new BDtoAdopt(dogid,dogname, dogadopttst,doggender,dogtraincomm,dogdate);
			   dtosadopt.add(dtoadopt);

			   System.out.println("윤희지 = 여기는 adoptwait_02 " + dtosadopt); // 테스트용
					   
		   
		   }	   
		   }catch(Exception e) {
		   e.printStackTrace();
		   
		   }finally {
			
		   try {
				  
		   if(resultSet !=null) resultSet.close();
		   if(preparedStatement !=null) resultSet.close();
		   if(connection !=null) resultSet.close();
		   connection.close();

			  
		   }catch(Exception e) {
		   e.printStackTrace();
			   
		   }
		   }
		   return dtosadopt ;

	   
	   
	   
	   }// ........................................ adoptwait_02 끝부분
        // ........................................ adoptcomplete_02 시작 부분
	   
	   public ArrayList<BDtoAdopt> adoptcomplete_02(int strid) {
		   
		   ArrayList<BDtoAdopt> dtosadopt = new ArrayList<BDtoAdopt>();     	   
			   
		   Connection connection = null;
		   PreparedStatement preparedStatement = null;
		   ResultSet resultSet = null;
			
		   try {
	    
		   connection = dataSource.getConnection();
		 
		   System.out.println("윤희지 = 여기는 bdo" + dtosadopt); // 테스트용

		   String query ="select dogid, dogname, doggender, dogdate, dogtraincomm, dogadopttst from dog where dogid = ?;";
		   preparedStatement = connection.prepareStatement(query);
		   preparedStatement.setInt(1, strid);
		   resultSet = preparedStatement.executeQuery();
		  
		   if(resultSet.next()) {
			   int dogid = resultSet.getInt("dogid");
			   String dogname = resultSet.getString("dogname");
			   String doggender = resultSet.getString("doggender");
			   String dogadopttst = resultSet.getString("dogadopttst");
			   String dogtraincomm = resultSet.getString("dogtraincomm");
			   Timestamp dogdate = resultSet.getTimestamp("dogdate");
			   
			  
			   
			   BDtoAdopt dtoadopt = new BDtoAdopt(dogid,dogname, dogadopttst,doggender,dogtraincomm,dogdate);
			   dtosadopt.add(dtoadopt);

			   System.out.println("윤희지 = 여기는 adoptcomplete_02 " + dtosadopt); // 테스트용
					   
		   }
			   
		   }catch(Exception e) {
		   e.printStackTrace();
		   
		   }finally {
			
		   try {
				  
		   if(resultSet !=null) resultSet.close();
		   if(preparedStatement !=null) resultSet.close();
		   if(connection !=null) resultSet.close();
		   connection.close();
			  
		   }catch(Exception e) {
		   e.printStackTrace();
			   
		   }
		   }
		   return dtosadopt ;
		   
	   } // adoptcomplete_02 끝부분
	 
	   
	   //.................................. adoptproceeding_02 시작 부분
           public ArrayList<BDtoAdopt> adoptproceeding_02(int strid) {
		   
		   ArrayList<BDtoAdopt> dtosadopt = new ArrayList<BDtoAdopt>();     	   
			   
		   Connection connection = null;
		   PreparedStatement preparedStatement = null;
		   ResultSet resultSet = null;
			
		   try {
	    
		   connection = dataSource.getConnection();
		 
		   System.out.println("윤희지 = 여기는 bdo" + dtosadopt); // 테스트용

		   String query ="select dogid, dogname, doggender, dogdate, dogtraincomm, dogadopttst from dog where dogid = ?;";
		   preparedStatement = connection.prepareStatement(query);
		   preparedStatement.setInt(1, strid);
		   resultSet = preparedStatement.executeQuery();
		  
		   if(resultSet.next()) {
			   int dogid = resultSet.getInt("dogid");
			   String dogname = resultSet.getString("dogname");
			   String doggender = resultSet.getString("doggender");
			   String dogadopttst = resultSet.getString("dogadopttst");
			   String dogtraincomm = resultSet.getString("dogtraincomm");
			   Timestamp dogdate = resultSet.getTimestamp("dogdate");
			   
			  
			   
			   BDtoAdopt dtoadopt = new BDtoAdopt(dogid,dogname, dogadopttst,doggender,dogtraincomm,dogdate);
			   dtosadopt.add(dtoadopt);

			   System.out.println("윤희지 = 여기는 adoptcomplete_02 " + dtosadopt); // 테스트용
					   
		   }
			   
		   }catch(Exception e) {
		   e.printStackTrace();
		   
		   }finally {
			
		   try {
				  
		   if(resultSet !=null) resultSet.close();
		   if(preparedStatement !=null) resultSet.close();
		   if(connection !=null) resultSet.close();
		   connection.close();
			  
		   }catch(Exception e) {
		   e.printStackTrace();
			   
		   }
		   }
		   return dtosadopt ;
 }//.....................................................adoptproceeding_02 끝부분
        
        }  // ........................................클라스 끝부분
                
