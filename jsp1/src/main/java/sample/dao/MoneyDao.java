package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.OracleUtility;
import sample.dto.Money;

public class MoneyDao {

	public List<Money> salesinquiry() throws SQLException{
		Connection conn = OracleUtility.getConnection();
		String sql = "select mt.custno,mt.custname,\r\n"
				+ " decode(grade, 'A', 'VIP', 'B', '일반', 'C', '직원') as grade,\r\n"
				+ "	total\r\n"
				+ "from member_tbl_02 mt\r\n"
				+ "join(\r\n"
				+ "	select custno, sum(price) as total\r\n"
				+ "	from money_tbl_02\r\n"
				+ "	group by custno \r\n"
				+ "	order by sum(price)\r\n"
				+ ")  sale\r\n"
				+ "on mt.custno = sale.custno";
		PreparedStatement ps = conn.prepareStatement(sql);
		List<Money> results = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			Money sales = new Money(rs.getInt(1),
					rs.getString(2),
					rs.getString(3),
					rs.getInt(4));
				results.add(sales);	
		}
		
		return results;
	}
	
	
}
