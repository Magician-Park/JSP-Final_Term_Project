import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
        String url = "jdbc:mysql://localhost:3306/JSPBookDB";
        String userName = "root";
        String password = "sunsky0082";
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/JSPBookDB", "root", "1234");
        } catch (SQLException ex) {
            // 예외발생 처리
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}