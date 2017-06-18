package com.restful2017.db;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 
 * Set of services provided for db interaction
 *
 */
public interface DBInterface {

	public List<Map<String, Object>> executeStatementSelect(String sqlStatement);
	
	
	public Integer executeStatementUpdate(String sqlQuery);
	
	
	public Integer executeStatementUpdate(String sqlQuery, ArrayList<Object> parameters);
	
	
	
}
