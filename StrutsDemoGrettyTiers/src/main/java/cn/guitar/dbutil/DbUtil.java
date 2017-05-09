package cn.guitar.dbutil;

import java.sql.Connection;
import java.sql.*;

public class DbUtil {


		public static void main(String[] args) {
			// TODO Auto-generated method stub
			DbUtil t=new DbUtil();
			System.out.print(t.getConnection());
		}
		
		
		public Connection getConnection(){
			
		    try {
				Class.forName("org.sqlite.JDBC");			
		       Connection conn =DriverManager.getConnection("jdbc:sqlite://C:/Users/hdq/Desktop/系统分析与设计/数据文件/guitars.db");
		    	return conn;
		    } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    return null;
			
		}
		public void closeConnection(Connection conn){
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

	}
