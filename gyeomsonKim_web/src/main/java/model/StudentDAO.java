package model;


import java.sql.*;
import java.util.ArrayList;

public class StudentDAO {
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = null;
	
	public StudentDAO() {
		String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
		String jdbc_url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "scott";
		String pwd = "tiger";
		
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, user, pwd);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void update(StudentDO stdDO) {
		System.out.println("업데이트시도.");
		sql = "update student set stdkor = ?, stdeng = ?, stdmat = ?, stdsci =? where stdnum = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stdDO.getStdkor());
			pstmt.setString(2, stdDO.getStdeng());
			pstmt.setString(3, stdDO.getStdmat());
			pstmt.setString(4, stdDO.getStdsci());
			pstmt.setString(5, stdDO.getStdnum());
				pstmt.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(!pstmt.isClosed()) {
					pstmt.close();
				}
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("업데이트완료.");
	}
	
	public void Delete(StudentDO stdDO2) {
		System.out.println("삭제시도.");
		sql = "delete from student where stdnum = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stdDO2.getStdnum());
				pstmt.executeUpdate();
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(!pstmt.isClosed()) {
					pstmt.close();
				}
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("삭제완료.");
	}
	
	
	public ArrayList<StudentDO> FindByNum(StudentDO iDO) {
		System.out.println("찾기시도.");
		ArrayList<StudentDO> list = new ArrayList<StudentDO>();
		StudentDO iDO1 = null;
		sql = "select * from student where stdnum = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, iDO.getStdnum());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				iDO1 = new StudentDO();
				iDO1.setStdnum(rs.getString("stdnum"));
				iDO1.setStdname(rs.getString("stdname"));
				iDO1.setStdgender(rs.getString("stdgender"));
				iDO1.setStdkor(rs.getString("stdkor"));
				iDO1.setStdeng(rs.getString("stdeng"));
				iDO1.setStdmat(rs.getString("stdmat"));
				iDO1.setStdsci(rs.getString("stdsci"));
				
				list.add(iDO1);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(!pstmt.isClosed()) {
					pstmt.close();
				}
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("찾기완료.");
		return list;
	}
	
	
	public ArrayList<StudentDO> FindAll() {
		System.out.println("전체찾기시도.");
		ArrayList<StudentDO> list = new ArrayList<StudentDO>();
		StudentDO iDO = null;
		sql = "select * from student";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				iDO = new StudentDO();
				iDO.setStdnum(rs.getString("stdnum"));
				iDO.setStdname(rs.getString("stdname"));
				iDO.setStdgender(rs.getString("stdgender"));
				iDO.setStdkor(rs.getString("stdkor"));
				iDO.setStdeng(rs.getString("stdeng"));
				iDO.setStdmat(rs.getString("stdmat"));
				iDO.setStdsci(rs.getString("stdsci"));
				
				list.add(iDO);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(!stmt.isClosed()) {
					stmt.close();
				}
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("전체찾기완료.");
		return list;
	}
	
	
		
	public void Insert(StudentDO iDO) {
		System.out.println("업데이트시도.");
		sql = "insert into student (stdnum, stdname, stdgender, stdkor, stdeng, stdmat, stdsci) " +
			  "values(?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, iDO.getStdnum());
			pstmt.setString(2, iDO.getStdname());
			pstmt.setString(3, iDO.getStdgender());
			pstmt.setString(4, iDO.getStdkor());
			pstmt.setString(5, iDO.getStdeng());
			pstmt.setString(6, iDO.getStdmat());
			pstmt.setString(7, iDO.getStdsci());
			pstmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(!pstmt.isClosed()) {
					pstmt.close();
				}
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("업데이트완료.");
	}
	
	public void closeConnection() {
		try {
			if(!conn.isClosed()) {
				conn.close();
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void TestPrint() {
		System.out.println("뭐");
	}
}
