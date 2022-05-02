package uts.isd.model.database;

import java.sql.Connection; //allow us to execute sql statement

/**
 * DB.java is to initialize connection settings
**/

public abstract class Database {
    protected String endPoint = "jdbc:derby://localhost:1527/iotBay";
    protected String username = "aliza";
    protected String password = "123";
    protected String driver = "org.apache.derby.jdbc.ClientDriver"; //
    protected Connection connDB;
}
