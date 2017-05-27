package bs.identity;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.mysql.jdbc.PreparedStatement;

import bs.db.DbClose;
import bs.db.DbConn;

public class HandleLogin extends HttpServlet{

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.service(arg0, arg1);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId = req.getParameter("userId");
		String password = req.getParameter("password");
		System.out.println(userId+" "+password);
		int loginResult = loginVerify(userId, password);
		if(loginResult==1){
			//go to dashboard
		}else{
			//return to login in page and give reason
			System.out.println(loginResult);
			req.setAttribute("loginResult", loginResultText(loginResult));
			System.out.println(loginResultText(loginResult));
			req.getRequestDispatcher("/jsp/login/loginfail.jsp").forward(req, resp);
		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}
	
	private String loginResultText(int result){
		switch(result){
			case -1:{
				return "用户名不存在";
			}
			case 0:{
				return "密码错误";
			}
			default:{
				return "未知错误";
			}
		}
	}
	
	private int loginVerify(String userName, String password){
		ResultSet rs = null;
		java.sql.PreparedStatement pstmt = null;
		Connection conn = DbConn.getConn();
		String sql="select * from user where userName=?"; 
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			rs=pstmt.executeQuery(); 
			
			if(rs.next()){
				if(rs.getString("password").equals(password)){
					return 1; //用户名密码匹配
				}else{
					return 0; //密码错误
				}
			}else{
				return -1; //-1 代表没找到用户
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DbClose.allClose(pstmt, rs, conn);
		} 
		
		
		return 0;
	}

}
