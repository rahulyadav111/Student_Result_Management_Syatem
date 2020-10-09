package Package;
import java.sql.*;
public class ConnectionProvider
{
	public static Connection getCon()
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","1234");
			return con;
			
		}catch (Exception e)
		{
			e.printStackTrace();
			return null;
			
		}
	}

}
