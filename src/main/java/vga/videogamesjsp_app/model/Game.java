package vga.videogamesjsp_app.model;

public class Game {
    private int user_id;
    private int game_id;
    private String title;
    private String description;
    private int year;
    private String genre;
    private String popularity;
    private String platform;
    private String mode;
    private String restrictions;
    private String requirements;
    private String link;
    private String creators;
    private float rating;
    private int rating_count;

    public Game(int user_id, int game_id, String title, String description, int year, String genre, String popularity, String platform, String mode, String restrictions, String requirements, String link, String creators, float rating, int rating_count) {
        this.user_id = user_id;
        this.game_id = game_id;
        this.title = title;
        this.description = description;
        this.year = year;
        this.genre = genre;
        this.popularity = popularity;
        this.platform = platform;
        this.mode = mode;
        this.restrictions = restrictions;
        this.requirements = requirements;
        this.link = link;
        this.creators = creators;
        this.rating = rating;
        this.rating_count = rating_count;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getGame_id() {
        return game_id;
    }

    public void setGame_id(int game_id) {
        this.game_id = game_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getPopularity() {
        return popularity;
    }

    public void setPopularity(String popularity) {
        this.popularity = popularity;
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getRestrictions() {
        return restrictions;
    }

    public void setRestrictions(String restrictions) {
        this.restrictions = restrictions;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getCreators() {
        return creators;
    }

    public void setCreators(String creators) {
        this.creators = creators;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public int getRating_count() {
        return rating_count;
    }

    public void setRating_count(int rating_count) {
        this.rating_count = rating_count;
    }

    @Override
    public String toString() {
        return "Game{" +
                "user_id=" + user_id +
                ", game_id=" + game_id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", year=" + year +
                ", genre='" + genre + '\'' +
                ", popularity='" + popularity + '\'' +
                ", platform='" + platform + '\'' +
                ", mode='" + mode + '\'' +
                ", restrictions='" + restrictions + '\'' +
                ", requirements='" + requirements + '\'' +
                ", link='" + link + '\'' +
                ", creators='" + creators + '\'' +
                ", rating=" + rating +
                ", rating_count=" + rating_count +
                '}';
    }
}
