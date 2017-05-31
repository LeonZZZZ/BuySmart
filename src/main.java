import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import bs.db.DbClose;
import bs.db.DbConn;
import sun.security.action.GetBooleanAction;

public class main {

	public static void main(String[] args) {
		ResultSet rs = null;
		java.sql.PreparedStatement pstmt = null;
		Connection conn = DbConn.getConn();
		String sql="select * from category"; 
		String[] category=new String[7];
		
		/*try {
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery(); 
			int i=0;
			while(rs.next()){
				category[i] = rs.getString("name");
				i++;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DbClose.allClose(pstmt, rs, conn);
		}
		// get 7 categories*/
		
		//random value
		int max=20;
        int min=10;
        Random random = new Random();
        int s = random.nextInt(max)%(max-min+1) + min;
		
        try {
		String sql2 = "insert into item values (?,'≤‚ ‘',?,'2017/5/31 23:11:25','leon',?,'none')";
        pstmt = conn.prepareStatement(sql2);
        
        for(int i=1; i<500; i++){
        	pstmt.setInt(1,i);
        	pstmt.setInt(2,getRandowValue(1,7));
        	pstmt.setDouble(3,getRandowValue(530,6000));
        	System.out.println(pstmt.toString());
        	pstmt.executeUpdate();
			} 
        }catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
        }finally {
			DbClose.allClose(pstmt, rs, conn);
		}
		
	}

	public static int getRandowValue(int min, int max){
        Random random = new Random();
        int s = random.nextInt(max)%(max-min+1) + min;
        return s;
	}
}
