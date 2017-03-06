package com.tcash.Dao;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.jdbc.ResultSet;
import com.tcash.Bean.TcashBean;
import com.tcash.Controller.SignupController;

public class TcashDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	 private static Logger slf4jLogger = LoggerFactory.getLogger(SignupController.class);

	public boolean save3(TcashBean e) {
		boolean userExists = false;
		int rowcount = template.queryForObject(
				"select count(*) from TcashUser1 where mobile_no = '" + e.getMobile_no() + "'", Integer.class);
		if (rowcount == 1) {
			userExists = true;
			return userExists;
		} else {
			userExists = false;
			return userExists;
		}

	}

	public int save(TcashBean p) {
		String n = p.getUsername();

		String sql = "insert into TcashUser1(username,password,Mobile_no) values('" + p.getUsername() + "','"
				+ p.getPassword() + "'," + p.getMobile_no() + ")";
		return template.update(sql);
	}

	public boolean save1(TcashBean e) {
		boolean userExists = false;
		int rowcount = template.queryForObject("select count(*) from TcashUser1 where mobile_no = '" + e.getMobile_no()
				+ "' and password = '" + e.getPassword() + "'", Integer.class);
		if (rowcount == 1) {
			userExists = true;
			return userExists;
		} else {
			userExists = false;
			return userExists;
		}

	}

	public int save2(Long mobile_no, TcashBean p) {

		Long u = mobile_no;
		String sql = "update TcashUser1 set fname='" + p.getFname() + "', lname='" + p.getLname() + "', email='"
				+ p.getEmail() + "' where mobile_no=" + u + "";
		return template.update(sql);

	}

	public int add(Long mobile_no, TcashBean p) {
		Long m = mobile_no;
		String sql = "insert into transaction (mobile_no,credit) values ((select mobile_no from tcashuser1 where mobile_no = "
				+ m + ")," + p.getBalance() + ")";
		add1(m, p);
		return template.update(sql);

	}

	public boolean add1(Long mobile_no, TcashBean e) {
		Long m = mobile_no;
		boolean userExists = false;
		int rowcount = template.queryForObject("select count(*) from balance where mobile_no = " + m + "",
				Integer.class);
		System.out.println(rowcount);
		if (rowcount == 1) {
			userExists = true;
			return userExists;
		} else {

			userExists = false;
			return userExists;
		}

	}

	public int add2(Long mobile_no, TcashBean p) {
		Long m = mobile_no;
		String sql = "insert into balance (mobile_no,balance) values ((select mobile_no from tcashuser1 where mobile_no = "
				+ m + ")," + p.getBalance() + ")";
		return template.update(sql);
	}

	public int add3(Long mobile_no, TcashBean p) {
		Long m = mobile_no;
		String sql = "update balance set balance=balance+" + p.getBalance() + " where mobile_no=" + m + "";
		return template.update(sql);

	}

	public int credit(Long mobile_no, TcashBean p1) {
		Float n1 = p1.getCredit();
		Long p2 = p1.getRecipient();
		String sql = "insert into transaction values(" + p2 + "," + n1 + ",0,0,CURRENT_TIMESTAMP(),'" + p1.getRemark()
				+ "')";
		slf4jLogger.info("fund is credited, {}",n1); 
		return template.update(sql);
	}

	public int debit(Long mobile_no, TcashBean p1) {
		Float n1 = p1.getCredit();
		Long p2 = p1.getRecipient();
		String sql = "insert into transaction values(" + mobile_no + ",0," + n1 + "," + p2 + ",CURRENT_TIMESTAMP(),'"
				+ p1.getRemark() + "')";
		return template.update(sql);
	}

	public int submit(Long mobile_no, TcashBean p2) {

		int sql = template.queryForObject("select balance from balance where mobile_no=" + mobile_no + "",
				Integer.class);
		if (sql >= p2.getCredit()) {
			credit(mobile_no, p2);
			debit(mobile_no, p2);
			return 1;
		} else {

			return 2;
		}
	}

	public int fund2(TcashBean p) {

		String sql = "insert into balance (mobile_no) values ((select mobile_no from tcashuser1 where mobile_no= "
				+ p.getRecipient() + "))";
		return template.update(sql);
	}

	public boolean fund(Long mobile_no, TcashBean e) {
		Long m = mobile_no;
		boolean userExists = false;

		int rowcount = template.queryForObject(
				"select count(*) from balance where mobile_no = " + e.getRecipient() + "", Integer.class);
		System.out.println(rowcount);
		if (rowcount == 1) {
			userExists = true;
			return userExists;
		} else {

			userExists = false;
			return userExists;
		}

	}

	public int fund3(Long mobile_no, TcashBean p) {
		float number = p.getCredit();
		Long p2 = p.getRecipient();
		String sql = "update balance set balance=balance+" + number + " where mobile_no=" + p2 + "";
		
		return template.update(sql);

	}

	public int fund4(Long mobile_no, TcashBean p) {
		float number = p.getCredit();
		String sql = "update balance set balance=balance-" + number + " where mobile_no=" + mobile_no + "";
		return template.update(sql);

	}

	public boolean fundcheck(Long mobile_no, TcashBean e) {
		Long m = mobile_no;
		boolean userExists = false;
		int rowcount = template.queryForObject(
				"select count(*) from tcashuser1 where mobile_no = " + e.getRecipient() + "", Integer.class);
		if (rowcount == 1) {
			userExists = true;
			return userExists;
		} else {

			userExists = false;
			return userExists;
		}

	}

	public List<TcashBean> retrieve1(Long mobile_no, TcashBean e) {
		String sql = "SELECT * FROM transaction where recipient=(select mobile_no from tcashuser1 where username=(select username from tcashuser1 where username='"
				+ e.getUsername() + "')) and mobile_no ="+mobile_no+"";

		List<TcashBean> listEmp = template.query(sql, new RowMapper<TcashBean>() {

			public TcashBean mapRow(java.sql.ResultSet rs, int rownum) throws SQLException {
				// Emp aEmp = new Emp();

				TcashBean e = new TcashBean();

				e.setMobile_no(rs.getLong(1));
				e.setCredit(rs.getFloat(2));
				e.setDebit(rs.getFloat(3));
				e.setRecipient(rs.getLong(4));
				e.setDate(rs.getString(5));
				e.setRemark(rs.getString(6));
				return e;
			}

		});
		return listEmp;
	}

	/*public List<TcashBean> retrieve2(Long mobile_no, TcashBean e) {
		String sql = "select * from transaction where cast(date as date)=(cast(now() as date)-5) and mobile_no="
				+ mobile_no + "";

		List<TcashBean> listEmp = template.query(sql, new RowMapper<TcashBean>() {

			public TcashBean mapRow(java.sql.ResultSet rs, int rownum) throws SQLException {
				// Emp aEmp = new Emp();

				TcashBean e = new TcashBean();

				e.setMobile_no(rs.getLong(1));
				e.setCredit(rs.getFloat(2));
				e.setDebit(rs.getFloat(3));
				e.setRecipient(rs.getLong(4));
				e.setDate(rs.getString(5));
				e.setRemark(rs.getString(6));
				return e;
			}

		});
		return listEmp;
	}*/

	public List<TcashBean> retrieve3(Long mobile_no, TcashBean e) {
		String sql = "select * from transaction where mobile_no="+ mobile_no + " and date_format(date,'%m/%d/%Y') between '"+e.getDate()+"' and '"+e.getDate1()+"'";
	
		List<TcashBean> listEmp = template.query(sql, new RowMapper<TcashBean>() {

			public TcashBean mapRow(java.sql.ResultSet rs, int rownum) throws SQLException {
				// Emp aEmp = new Emp();

				TcashBean e = new TcashBean();

				e.setMobile_no(rs.getLong(1));
				e.setCredit(rs.getFloat(2));
				e.setDebit(rs.getFloat(3));
				e.setRecipient(rs.getLong(4));
				e.setDate(rs.getString(5));
				e.setRemark(rs.getString(6));
				return e;
			}

		});
		return listEmp;
	}

	public boolean check(TcashBean e) {
		boolean userexists = false;
		int rowcount = template.queryForObject(
				"select count(*) from transaction where recipient=(select mobile_no from tcashuser1 where username ='"
						+ e.getUsername() + "')",
				Integer.class);

		
		if (rowcount >= 1) {
			userexists = true;
			slf4jLogger.info("Transactions for the recipient present "); 
			return userexists;
		} else {
			userexists = false;
			slf4jLogger.error("Transaction for the recipient not present"); 
			return userexists;
		}
	}

	public float avlbal(Long mobile_no, TcashBean p) {

		float rowcount = template.queryForObject("select balance from balance where mobile_no=" + mobile_no + "",
				Integer.class);
		return rowcount;

	}

}


