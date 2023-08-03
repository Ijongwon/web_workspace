package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.OracleUtility;
import sample.dto.Member;

//DAO 에는 입력과 출력은 포함시키지 않습니다. 오직 어떤 형식의 데이터를 받아서 어떤 SQL을 실행하여, 어떤 값을 리턴할 것인가를 중점을 두고 정의하면 됩니다.
//DTO 는 데이터를 저장하는 목적의 클래스, DAO는 어떤 동작을 할것인지를 정의한 메소드만 있습니다.
public class MemberDao {
// insert,select,update
// 싱글톤으로 만들어 봅니다.
	
	private static MemberDao dao = new MemberDao();
	private MemberDao() {}
	public static MemberDao getMemberDao() {	//메소드 getInstacne 외에 내용을 알수 있는 이름으로 정하기
		return dao;
	}
	
	
	//회원가입
	public int insertMember(Member member) throws SQLException{
		Connection conn = OracleUtility.getConnection();
		String sql = "insert into Member_tbl_02 values (memtbl_seq.nextval,?,?,?,sysdate,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
	
		ps.setString(1, member.getCustname());
		ps.setString(2, member.getPhone());
		ps.setString(3, member.getAddress());
		ps.setString(4, member.getGrade());
		ps.setString(5, member.getCity());
		
		int results = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return results;
		
	}

	//회원정보조회
	public List<Member> selectAll() throws SQLException{
		Connection conn = OracleUtility.getConnection();
		String sql = "SELECT\r\n"
				+ "  custno,\r\n"
				+ "  custname,\r\n"
				+ "  phone,\r\n"
				+ "  address,\r\n"
				+ "  TO_CHAR(joindate, 'YYYY-MM-DD'),\r\n"
				+ "decode(grade, 'A', 'VIP', 'B', '일반', 'C', '직원') as grade,\r\n"
				+ "  city\r\n"
				+ "FROM\r\n"
				+ "  member_tbl_02";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		List<Member> results = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			Member mem = new Member(rs.getInt(1),
					rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getDate(5),
					rs.getString(6),
					rs.getString(7));
			results.add(mem);
		}
		ps.close();
		conn.close();
		return results;
	}
	

	//update 회원정보수정
	public int update(Member member) throws SQLException{
		
		Connection conn = OracleUtility.getConnection();
		String sql = "update member_tbl_02 set custno =?, custname =?, phone =? , address=?, joindate =?, grade =?, city=? where custno = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, member.getCustno());
		ps.setString(2, member.getCustname());
		ps.setString(3, member.getPhone());
		ps.setString(4, member.getAddress());
		ps.setDate(5, member.getJoindate());
		ps.setString(6, member.getGrade());
		ps.setString(7, member.getCity());
		ps.setInt(8, member.getCustno());
		int results = ps.executeUpdate();
		
		ps.close();
		conn.close();
		
		return results;
	}
}
