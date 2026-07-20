import java.sql.*;


public class TableManager {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/CSD430";
    private static final String DB_USER = "student1";
    private static final String DB_PASSWORD = "pass";

    public static void main(String[] args) {

        if (args.length != 1) {
            System.out.println("Usage: java TableManager [create|populate|drop]");
            return;
        }

        String action = args[0].toLowerCase();

        switch (action) {
            case "create":
                createTable();
                break;
            case "populate":
                populateTable();
                break;
            case "drop":
                dropTable();
                break;
            default:
                System.out.println("Unknown action. Use create, populate, or drop.");
        }
    }

    /**
     * Opens a connection to the CSD430 database using the student1 account.
     */
    private static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }

    /**
     * Creates the miguelstatesdata table if it does not already exist.
     */
    public static void createTable() {
        String sql = "CREATE TABLE IF NOT EXISTS miguelstatesdata ("
                + "state_id INT AUTO_INCREMENT PRIMARY KEY, "
                + "state_name VARCHAR(50) NOT NULL, "
                + "capital VARCHAR(50) NOT NULL, "
                + "population INT NOT NULL, "
                + "region VARCHAR(20) NOT NULL, "
                + "year_admitted INT NOT NULL)";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement()) {

            stmt.executeUpdate(sql);
            System.out.println("Table miguelstatesdata created successfully");

        } catch (SQLException e) {
            System.out.println("Error creating table: " + e.getMessage());
        }
    }

    /**
     * Inserts the 10 sample state records into miguelstatesdata.
     */
    public static void populateTable() {
        String sql = "INSERT INTO miguelstatesdata "
                + "(state_name, capital, population, region, year_admitted) VALUES "
                + "('Florida', 'Tallahassee', 8342917, 'South', 1845),"
                + "('California', 'Sacramento', 27194855, 'West', 1850),"
                + "('Texas', 'Austin', 19387204, 'South', 1845),"
                + "('New York', 'Albany', 5209436, 'Northeast', 1788),"
                + "('South Carolina', 'Columbia', 12045378, 'South', 1788),"
                + "('Ohio', 'Columbus', 3178942, 'Midwest', 1803),"
                + "('Washington', 'Olympia', 16820391, 'West', 1889),"
                + "('Colorado', 'Denver', 2094857, 'West', 1876),"
                + "('Georgia', 'Atlanta', 33017642, 'South', 1788),"
                + "('Pennsylvania', 'Harrisburg', 7461238, 'Northeast', 1787)";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement()) {

            int rows = stmt.executeUpdate(sql);
            System.out.println(rows + " records inserted successfully");

        } catch (SQLException e) {
            System.out.println("Error inserting records: " + e.getMessage());
        }
    }

    /**
     * Drops the miguelstatesdata table if it exists.
     */
    public static void dropTable() {
        String sql = "DROP TABLE IF EXISTS miguelstatesdata";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement()) {

            stmt.executeUpdate(sql);
            System.out.println("Table miguelstatesdata dropped successfully");

        } catch (SQLException e) {
            System.out.println("Error dropping table: " + e.getMessage());
        }
    }
}