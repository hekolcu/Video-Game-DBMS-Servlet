package vga.videogamesjsp_app.model;

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
                gameArrayList.add(resultSetToGame(rs));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return gameArrayList;
    }

    public ArrayList<Game> getGames(int id) {
        ArrayList<Game> gameArrayList = new ArrayList<>();
        try {
            PreparedStatement pstmt = this.con.prepareStatement("SELECT * FROM GAME WHERE USER_ID = ?");
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                gameArrayList.add(resultSetToGame(rs));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return gameArrayList;
    }

    public Game getGame(int id) {
        try {
            PreparedStatement pstmt = this.con.prepareStatement("SELECT * FROM GAME WHERE GAME_ID = ?");
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return resultSetToGame(rs);
            }
        } catch (SQLException e){
            System.out.println("No game found with id: " + id);
        }
        return null;
    }

    public Game addGame(int user_id, String title, String description, int year, String genre, String popularity, String platform, String mode, String restrictions, String requirements, String link, String creators, Float rating, int rating_count){
        try {
            PreparedStatement pstmt = this.con.prepareStatement("INSERT INTO GAME(USER_ID, TITLE, DESCRIPTION, YEAR, GENRE, POPULARITY, PLATFORM, MODE, RESTRICTIONS, REQUIREMENTS, LINK, CREATORS, RATING, RATING_COUNT) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
            pstmt.setInt(1, user_id);
            pstmt.setString(2, title);
            pstmt.setString(3, description);
            pstmt.setInt(4, year);
            pstmt.setString(5, genre);
            pstmt.setString(6, popularity);
            pstmt.setString(7, platform);
            pstmt.setString(8, mode);
            pstmt.setString(9, restrictions);
            pstmt.setString(10, requirements);
            pstmt.setString(11, link);
            pstmt.setString(12, creators);
            pstmt.setFloat(13, rating);
            pstmt.setInt(14, rating_count);
            if (pstmt.execute()) {
                return new Game(
                        pstmt.getGeneratedKeys().getInt("ID"),
                        user_id,
                        title,
                        description,
                        year,
                        genre,
                        popularity,
                        platform,
                        mode,
                        restrictions,
                        requirements,
                        link,
                        creators,
                        rating,
                        rating_count
                );
            }
        } catch (SQLException e){
            System.out.println("Game could not be inserted!");
        }
        return null;
    }

    private Game resultSetToGame(ResultSet rs) throws SQLException {
        return new Game(
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
        );
    }
}
