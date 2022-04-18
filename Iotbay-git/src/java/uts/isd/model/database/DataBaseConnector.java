package uts.isd.model.database; 

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseConnector extends Database{
    public DataBaseConnector() throws ClassNotFoundException, SQLException {
        Class.forName(driver); 
        super.connDB = DriverManager.getConnection(endPoint, username, password);
    }

    public Connection connectionStart(){
        return super.connDB;
    }

    public void connectionEnds() throws SQLException {
        this.connDB.close();
    }
}