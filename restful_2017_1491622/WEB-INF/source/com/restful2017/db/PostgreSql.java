package com.restful2017.db;

import java.io.*;
import java.sql.*;
import java.util.*;

public class PostgreSql {

    private String url;
    private String host = "postgresql";
    private String port = "5432";
    private String DBSchema;
    private String DBName;
    private String DBUser;
    private String DBPassword;

    public PostgreSql(String DBName, String DBSchema, String DBUser, String DBPassword){
        this.url = "jdbc:postgresql://"+this.host+':'+this.port+'/'+DBName;
        this.DBSchema = DBSchema;
        this.DBUser = DBUser;
        this.DBPassword = DBPassword;
    }

    private Connection getConnection()
    {
        Connection conn = null;
        try
        {
            Class.forName("org.postgresql.Driver");
            String url = this.url;
            conn = DriverManager.getConnection(this.url , this.DBUser, this.DBPassword);
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
            System.exit(1);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            System.exit(2);
        }
        return conn;
    }

    /**
     * Executes a select-type query into the DB
     * @param sqlStatement A String containing an explicit sql query (example: "SELECT * FROM MY_TABLE")
     * @return A list of Map<String, Object> containing all the fetched rows. Column names and column values are paired.
     *
     */
    public List<Map<String, Object>> executeStatementSelect(String sqlStatement){

        //we have to create a new connection for each query (or group of queries)
        Connection con = null;

        //create the container for the new statement and result set
        Statement stmt = null;
        ResultSet rs = null;

        //Instantiate a new connection
        try {
            con = this.getConnection();

            //as we are using a single query, we don't need to group queries for better performance
            con.setAutoCommit(true);

        } catch (SQLException e1) {
            e1.printStackTrace();
        }

        //Create the containers for the return object
        List<Map<String, Object>> resultList = new ArrayList<Map<String, Object>>();
        Map<String, Object> row = null;

        //Execute the query and populate the return Object
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(sqlStatement);

            ResultSetMetaData metaData = rs.getMetaData();
            Integer columnCount = metaData.getColumnCount();

            while (rs.next()) {
                row = new HashMap<String, Object>();
                for (int i = 1; i <= columnCount; i++) {
                    row.put(metaData.getColumnName(i), rs.getObject(i));
                }
                resultList.add(row);
            }

        } catch (SQLException e) {

            System.out.println("Error creating statement: " + e);

        }finally {

            //close current statement and DB connection

            try {
                if(stmt != null) stmt.close();
                if(con  != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

        //return the result Object
        return resultList;

    }

    /**
     * Executes an update query into the DB without implicit parameters
     * @param sqlQuery A string containing an explicit SQL query (Example: "CREATE TABLE MYTABLE..."
     * @return number of affected rows
     */
    public Integer executeStatementUpdate(String sqlQuery){

        //create the container for the new statement and connection
        Statement stmt = null;
        Connection con = null;

        Integer rs = 0;

        try {
            con = getConnection();

            //as we are using a single query, we don't need to group queries for better performance
            con.setAutoCommit(true);

            stmt = con.createStatement();

            rs = stmt.executeUpdate(sqlQuery);

        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        finally {

            //close current statement and DB connection

            try {
                if(stmt != null) stmt.close();
                if(con  != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

        return rs;

    }

    /**
     * Executes an insert-type query into the DB, using a prepared statement.
     * @param sqlQuery A string containing an implicit SQL query (Example: "INSERT INTO MYTABLE (ID, USER_NAME) VALUES (?,?)"
     * @param parameters An ArrayList of Object containing the parameters values.
     * The value type order must match the table column type order;
     */
    public Integer executeStatementUpdate(String sqlQuery, ArrayList<Object> parameters){

        //create the container for the new statement and connection
        PreparedStatement preparedStatement = null;
        Connection con = null;

        //return variable for updated row count
        Integer rs=0;

        try {

            con = getConnection();

            //as we are using a single query, we don't need to group queries for better performance
            con.setAutoCommit(true);

            //create a new prepared statement for the query
            preparedStatement = con.prepareStatement(sqlQuery);

            int i = 1;

            //cycle over the parameters values and bind it to the implicit ? parameters
            for (Object g:parameters){

                //switch on the parameters type and set the respective values and types
                switch(g.getClass().getName().toLowerCase()){

                    case "java.lang.string":
                        preparedStatement.setString(i, (String) g);
                        break;

                    case "java.lang.integer":
                        preparedStatement.setInt(i, (Integer) g);
                        break;

                    case "java.lang.double":
                        preparedStatement.setDouble(i, (Double) g);
                        break;

                    case "java.lang.float":
                        preparedStatement.setFloat(i, (Float) g);
                        break;

                    case "java.lang.boolean":
                        preparedStatement.setBoolean(i, (Boolean) g);
                        break;

                    case "java.util.date":
                        //convert java.util.Date to java.sql.Date, then set the parameter values
                        preparedStatement.setDate(i, new java.sql.Date(((java.util.Date)g).getTime()));
                        break;

                    //If the parameter type is unknown, throw an exception
                    default:
                        throw new Exception(g.getClass().getName()+": Type not found in SQL prepared statement. Unable to add parameter value!");

                }

                i++;

            }
            // execute insert SQL statement
            rs = preparedStatement.executeUpdate();


        } catch (SQLException e) {
            System.out.println(e.getMessage());

        } catch (Exception e) {
            e.printStackTrace();

        } finally {

            //close current statement and DB connection

            try {
                if(preparedStatement != null) preparedStatement.close();
                if(con  != null) con.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        return rs;

    }

}