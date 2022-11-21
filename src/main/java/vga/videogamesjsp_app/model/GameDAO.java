package com.example.servletproject1.model;

import java.sql.*;
import java.util.ArrayList;

public enum GameDAO {
    instance;
    private final Connection con;

    GameDAO() {
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

    public ArrayList<Game> getGames() {
        ArrayList<Game> gameArrayList = new ArrayList<>();
        Statement stmt = null;
        try {
            stmt = this.con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM GAME");
            while (rs.next()) {
                gameArrayList.add(
                        new Game(
                                rs.getInt("USER_ID"),
                                rs.getInt("GAME_ID"),
                                rs.getString("TITLE"),
                                rs.getString("DESCRIPTION"),
                                rs.getInt("YEAR"),
                                rs.getString("GENRE"),
                                rs.getString("POPULARITY"),
                                rs.getString("PLATFORM"),
                                rs.getString("MODE"),
                                rs.getString("RESTRICTIONS"),
                                rs.getString("REQUIREMENTS"),
                                rs.getString("LINK"),
                                rs.getString("CREATORS"),
                                rs.getFloat("RATING"),
                                rs.getInt("RATING_COUNT")
                        )
                );
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return gameArrayList;
    }

}
