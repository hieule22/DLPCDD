package com.fis.cdd.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.fis.cdd.dao.UsersDAO;
import com.fis.cdd.model.Users;

public class UsersDAOImpl implements UsersDAO {
	//dataSource contain attributes about configure database
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public Users checkLogin(String username, String password) {
		String query = "select id, username, password from Users where username = ? and password=?";
		Users users = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = (Connection) dataSource.getConnection();
			ps = con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if (rs.next()) {
				users = new Users();
				users.setId(rs.getInt("id"));
				users.setUsername(rs.getString("username"));
				users.setPassword(rs.getString("password"));
				System.out.println("Login success!" + users);
				return users;
			} else {
				System.out.println("username or password invalid!");
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
