import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBC {
    public static void main(String[] args) {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
           
            Class.forName("com.mysql.jdbc.Driver");

           
            String url = "jdbc:mysql://localhost:3306/mydatabase";
            String username = "your-username";
            String password = "your-password";

           
            connection = DriverManager.getConnection(url, username, password);

           
            statement = connection.createStatement();


            String query = "SELECT * FROM mytable";
            resultSet = statement.executeQuery(query);

         
            while (resultSet.next()) {
              
                String column1 = resultSet.getString("column1");
                int column2 = resultSet.getInt("column2");

              
                System.out.println("Column1: " + column1 + ", Column2: " + column2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
