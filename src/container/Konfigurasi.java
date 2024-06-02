package container;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Konfigurasi {
    private static Connection MySQLConfig;

    public static Connection configDB() throws SQLException {
        try {
            String url = "jdbc:mysql://localhost:3306/adminparkir";
            String user = "root";
            String password = "";

            // Register the new MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            MySQLConfig = DriverManager.getConnection(url, user, password);
        } 
        catch (SQLException e) {
            System.out.println("Koneksi ke basis data gagal !!! " + e.getMessage());
        } 
        catch (ClassNotFoundException e) {
            System.out.println("Driver tidak ditemukan !!! " + e.getMessage());
        }
        return MySQLConfig;
    }

    Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}

