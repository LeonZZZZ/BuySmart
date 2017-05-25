package bs.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConn
{
	private static Connection conn=null;
	
	public static Connection getConn()
	{
		try
        {
            Class.forName("com.mysql.jdbc.Driver");     //加载JDBC驱动
            System.out.println("Driver Load Success.");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","");   //创建数据库连接对象
                //创建Statement对象
        }
		catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
			
		return conn;
	}
	
}
