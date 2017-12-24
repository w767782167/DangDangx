package com.etcxm.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import com.etcxm.entity.Comment;
import com.etcxm.entity.User;
import com.etcxm.util.JDBCUtils;

public class UserDao {
	private JDBCUtils util = new JDBCUtils();

	public UserDao() {
		util.getConnection();
	}

	// 用户登录，查询单条记录
	public User login(User user) throws Exception {
		String sql = "select * from t_user where user_name=? and user_password=?";
		List<Object> params = new ArrayList<Object>();
		params.add(user.getUser_name());
		params.add(user.getUser_password());
		User res = util.findSimpleRefResult(sql, params, User.class);
		util.releaseConn();
		return res;

	}
	//查找用户名是否存在
	public User checkUserName(String username) throws Exception{
		String sql = "select * from t_user where user_name=?";
		List<Object> params = new ArrayList<Object>();
		params.add(username);
		User user = util.findSimpleRefResult(sql, params, User.class);
		util.releaseConn();
		return user;
	}
	//用户注册
	public boolean reg(User user) throws SQLException{
		String sql="insert into t_user values(null,?,?)";
		List<Object> params = new ArrayList<Object>();
		params.add(user.getUser_password());
		params.add(user.getEmail());
		 boolean flag = util.updateByPreparedStatement(sql, params);
		 util.releaseConn();
		return flag;
	}
	//用户发表评论
	public boolean comment(Comment comment) throws SQLException{
		String sql="insert into t_comment values(null,?,?,?)";
		List<Object> params = new ArrayList<Object>();
		params.add(comment.getUser_id());
		params.add(comment.getComment_context());
		params.add(comment.getComment_time());
		boolean flag = util.updateByPreparedStatement(sql, params);
		util.releaseConn();
		return flag;
		
	}
	//展示用户评论
	public List<Comment> showComment() throws Exception{
		String sql="select * from t_comment  order by comment_id desc";
		List<Comment> comments = util.findMoreRefResult(sql, null, Comment.class);
		util.releaseConn();
		return comments;
	}
}
