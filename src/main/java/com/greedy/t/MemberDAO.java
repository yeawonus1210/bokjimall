package com.greedy.t;

import java.sql.Connection;
import static com.greedy.t.JdbcTemplate.getConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Service;

@Service
public class MemberDAO {

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rset;

	public MemberDAO() {

		con = getConnection();
	}

	public int Login(String userid, String userpassword) {

		String sql = "select userPassword from BBSS where userid = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);

			rset = pstmt.executeQuery();
			if (rset.next()) {
				if (rset.getString(1).equals(userpassword)) {
					return 1;
				} else {
					return 0;
				}

			}
			return -1;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return -2;

	}

	public int join(MemberVO vo) {

		String sql = "insert into BBSS values(?,?,?,?,?,?)";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getUserid());
			pstmt.setString(2, vo.getUserpassword());
			pstmt.setString(3, vo.getUsername());
			pstmt.setString(4, vo.getUseremail());
			pstmt.setString(5, vo.getUserphone());
			pstmt.setString(6, vo.getUseraddress());

			return pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return -1;

	}

	public int joinAction(String userid) {

		String sql = "select userPassword from BBSS where userid = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);

			rset = pstmt.executeQuery();
			if (rset.next()) {
				if (rset.getString(1).equals(userid)) {
					return 1;
				} else {
					return 0;
				}

			}
			return -1;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return -2;

	}
	public int update_mypage(MemberVO vo) {

		String sql = "update BBSS set username = ?,useremail = ? where userid = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getUsername());
			pstmt.setString(2, vo.getUseremail());
			pstmt.setString(3, vo.getUserid());

			return pstmt.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
		}


		return -1;
	}

	public int update_pw(String userpassword, String userid) {

		String sql = "update BBSS set userpassword = ? where userid = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userpassword);
			pstmt.setString(2, userid);

			return pstmt.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}



		return -1;
	}

	public int delete(String userid) {


		String sql = "delete from BBSS where userid = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);

			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}





		return -1;
	}

}
