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
            Class.forName("com.mysql.jdbc.Driver");     //����JDBC����
            System.out.println("Driver Load Success.");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root","");   //�������ݿ����Ӷ���
                //����Statement����
        }
		catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
			
		return conn;
	}
	
}
