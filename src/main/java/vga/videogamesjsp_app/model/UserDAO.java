package vga.videogamesjsp_app.model;

import vga.videogamesjsp_app.ServletHash;

import java.sql.*;

public enum UserDAO {
    instance;

    private final Connection con;

    UserDAO() {
        try {
            Class.forName("org.hsqldb.jdbcDriver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            this.con = DriverManager.getConnection(
                    "jdbc:hsqldb:hsql://localhost/games",
                    "SA",
                    ""
            );
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public User checkPassword(String email, String password){
        try {
            PreparedStatement pstmt = this.con.prepareStatement("SELECT * FROM USER WHERE email = ? AND password = ?");
            pstmt.setString(1, email);
            pstmt.setString(2, ServletHash.hashPassword(password));
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()){
                return new User(
                        rs.getInt("ID"),
                        rs.getString("EMAIL"),
                        rs.getString("PASSWORD"),
                        rs.getString("NAME")
                );
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
}
