package onlinereservationsystem;

import java.sql.*;

public class Conn {
    
    Connection c;
    Statement s;
    
    public Conn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql:///onlinereservationsystem", "root", "VF1A8BAB6");
            s = c.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

