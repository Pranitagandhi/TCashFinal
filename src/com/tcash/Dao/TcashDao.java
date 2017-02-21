package com.tcash.Dao;

import java.math.BigInteger;

import org.springframework.jdbc.core.JdbcTemplate;

import com.tcash.Bean.TcashBean;

public class TcashDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(TcashBean p) {

		String sql = "insert into TcashUser1(username,password,Mobile_no) values('" + p.getUsername() + "','"
				+ p.getPassword() + "'," + p.getMobile_no() + ")";
		return template.update(sql);
	}
	public boolean save1(TcashBean e) {
		boolean userExists = false;
		int rowcount = template.queryForObject("select count(*) from TcashUser1 where Username = '" + e.getUsername()
				+ "' and password = '" + e.getPassword() + "'", Integer.class);

		if (rowcount == 1) {
			userExists = true;
			return userExists;
		} else {
			userExists = false;
			return userExists;
		}

	}
	
	public int save2(TcashBean p){
		String sql = "update TcashUser1 set fname='"+p.getFname()+"', lname='"+p.getLname()+"', email='"+p.getEmail()+"' where username='"+p.getUsername()+"'";
		return template.update(sql);
		
	}
	
}
