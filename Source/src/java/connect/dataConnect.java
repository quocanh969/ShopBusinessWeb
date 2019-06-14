/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author tranq
 */
public class dataConnect {
    public static Connection getConnection(){
        Connection conn = null;
        try
        {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=WEB_QUAN_AO;user=sa;password=1234");
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return conn;
    }
    
    public static void main(String []args){
        System.out.println(getConnection());
    }
}
