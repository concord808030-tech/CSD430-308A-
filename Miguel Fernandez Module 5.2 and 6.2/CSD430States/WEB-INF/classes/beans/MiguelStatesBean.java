package beans;

import java.sql.*;
import java.util.ArrayList;

public class MiguelStatesBean {

    private int stateId;
    private String stateName;
    private String capital;
    private int population;
    private String region;
    private int yearAdmitted;

    private static final String DB_URL = "jdbc:mysql://localhost:3306/CSD430";
    private static final String DB_USER = "student1";
    private static final String DB_PASSWORD = "pass";

    public MiguelStatesBean() {
    }

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public int getStateId() {
        return stateId;
    }

    public void setStateId(int stateId) {
        this.stateId = stateId;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public String getCapital() {
        return capital;
    }

    public void setCapital(String capital) {
        this.capital = capital;
    }

    public int getPopulation() {
        return population;
    }

    public void setPopulation(int population) {
        this.population = population;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public int getYearAdmitted() {
        return yearAdmitted;
    }

    public void setYearAdmitted(int yearAdmitted) {
        this.yearAdmitted = yearAdmitted;
    }

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }

    public ArrayList<String[]> getAllKeys() {
        ArrayList<String[]> keyList = new ArrayList<String[]>();
        String sql = "SELECT state_id, state_name FROM miguelstatesdata ORDER BY state_name";

        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String[] row = new String[2];
                row[0] = String.valueOf(rs.getInt("state_id"));
                row[1] = rs.getString("state_name");
                keyList.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return keyList;
    }

    public boolean findByKey(int id) {
        String sql = "SELECT * FROM miguelstatesdata WHERE state_id = ?";
        boolean found = false;

        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    this.stateId = rs.getInt("state_id");
                    this.stateName = rs.getString("state_name");
                    this.capital = rs.getString("capital");
                    this.population = rs.getInt("population");
                    this.region = rs.getString("region");
                    this.yearAdmitted = rs.getInt("year_admitted");
                    found = true;
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return found;
    }
}