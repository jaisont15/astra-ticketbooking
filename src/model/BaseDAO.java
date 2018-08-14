package model;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import exception.ServiceLocatorException;

import jdbc.DBConnectionFactory;


public abstract class BaseDAO {
	protected Connection database;
	
	public BaseDAO(){
		try {
			database = DBConnectionFactory.getConnection();
		} catch (ServiceLocatorException e) {
			System.out.println("Error when try to connect database.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Error when try to connect database.");
			e.printStackTrace();
		}
	}
	
	
	
}
