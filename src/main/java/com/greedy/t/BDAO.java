package com.greedy.t;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import org.springframework.stereotype.Service;
import com.greedy.t.BVO;


import static com.greedy.t.JdbcTemplate.getConnection;

@Service
public class BDAO {
	
	private Connection connection;
	private PreparedStatement preparedStatement;
	private ResultSet resultSet;
	private ArrayList<BVO> bVOs;
	

	public BDAO() {
		connection = getConnection();
		System.out.println("BDAO접속성공!!");
		bVOs = new ArrayList<>();
		
	}

	public ArrayList<BVO> list() {
		try {
			System.out.println("--List--여기까지오니?");
			String sql = "select bNo, bName, bSubject, bContent, bDate, bHit, bGroup, bStep, bIndent from mvc_bbs order by bGroup desc, bStep asc";
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();

			System.out.println("list여기는어노???");
			while (resultSet.next()) {
				int bNo = resultSet.getInt("bNo");
				String bName = resultSet.getString("bName");
				String bSubject = resultSet.getString("bSubject");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");

				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");

				BVO bVO = new BVO(bNo, bName, bSubject, bContent, bDate, bHit, bGroup, bStep, bIndent);

				System.out.println("333List???");
				bVOs.add(bVO);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
					
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				
				if (connection != null) {
					
					connection.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		System.out.println("connection닫히니?");
		return bVOs;
	}

	public BVO contentView(String bbsNo) {

		BVO bVo = null;

		try {

			String sql = "select * from mvc_bbs where bNo = ?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, Integer.parseInt(bbsNo));
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				int bNo = resultSet.getInt("bNo");
				String bName = resultSet.getString("bName");
				String bSubject = resultSet.getString("bSubject");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");

				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");

				bVo = new BVO(bNo, bName, bSubject, bContent, bDate, bHit, bGroup, bStep, bIndent);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return bVo;

	}

	public void delete(final String bNo) {
		try {

			String sql = "delete from mvc_bbs where bNo = ?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, Integer.parseInt(bNo));

			int n = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public void write(final String bName, final String bSubject, final String bContent) {

		try {
			System.out.println("-------- connection �솗蹂� ----------");

			String sql = "insert into mvc_bbs(bNo, bName, bSubject, bContent, bHit, bGroup, bStep, bIndent) "
					+ "values(seq_bbs.nextval,?,?,?,0,seq_bbs.currval,0,0)";
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bSubject);
			preparedStatement.setString(3, bContent);

			int n = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}// write()

	public void modify(final String bNo, final String bName, final String bSubject, final String bContent) {

		try {
			System.out.println("而ㅻ꽖�뀡 �솗蹂�!!-----------");

			String sql = "update mvc_bbs set bName = ?, bSubject=?, bContent=? where bNo = ?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bSubject);
			preparedStatement.setString(3, bContent);
			preparedStatement.setInt(4, Integer.parseInt(bNo));

			int n = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}// modify()

	public BVO replyForm(String bbsNo) {

		BVO bVO = null;

		try {

			String sql = "select * from mvc_bbs where bNo =?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, Integer.parseInt(bbsNo));
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				int bNo = resultSet.getInt("bNo");
				String bName = resultSet.getString("bName");
				String bSubject = resultSet.getString("bSubject");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");

				bVO = new BVO(bNo, bName, bSubject, bContent, bDate, bHit, bGroup, bStep, bIndent);

			} // if()

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return bVO;

	}// replyForm()

	public void replyOk(String bNo, final String bName, final String bSubject, final String bContent,
			final String bGroup, final String bStep, final String bIndent) {

		System.out.println("1.여기를못오는거니??");
		replySet(bGroup, bStep);
		try {
			System.out.println("2여기를못오니??");
			String sql = "insert into mvc_bbs (bNo, bName, bSubject, bContent, bGroup, bStep, bIndent) values(seq_bbs.nextVal,?,?,?,?,?,?)";

			System.out.println("3.여기를못오는거니??");
			preparedStatement = connection.prepareStatement(sql);
			System.out.println("4.여기를못오는거니??");
			preparedStatement.setString(1, bName);
			System.out.println("5.여기를못오는거니??");
			preparedStatement.setString(2, bSubject);
			preparedStatement.setString(3, bContent);
			System.out.println("7.여기를못오는거니??");
			preparedStatement.setInt(4, Integer.parseInt(bGroup));
			preparedStatement.setInt(5, Integer.parseInt(bStep) + 1);
			System.out.println("8.여기를못오는거니??");
			preparedStatement.setInt(6, Integer.parseInt(bIndent) + 1);
			System.out.println("9.여기를못오는거니??");

			int n = preparedStatement.executeUpdate();
			
			System.out.println("성공해서업데이트된거아니니??");
		} catch (SQLException e) {
			System.out.println("오지도못하고에러인거니??");
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} 
		System.out.println("잘마무리되서넘기는거맞니????");
	}

	public void replySet(final String group, final String step) {

		try {
			String sql = "update mvc_bbs set bStep = bStep+1 where bGroup=? and bStep>?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, Integer.parseInt(group));
			preparedStatement.setInt(2, Integer.parseInt(step));

			int n = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}// replySet()

	private void addHit(final String bNo) {

		try {
			String sql = "update mvc_bbs set bHit = bHit + 1 where bNo = ?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, bNo);

			int n = preparedStatement.executeUpdate();
			System.out.println("�엳�듃�닔 �뾽�뜲�씠�듃!!!");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}// addHit()

}
