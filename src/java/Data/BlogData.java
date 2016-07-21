/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;
import Model.*;
import Controller.*;
import Data.*;
import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class BlogData {
    
    public static ArrayList<Blog> getblogdata(){
        ConnectionPool pool = ConnectionPool.getInstance();
                Connection connection = pool.getConnection();
	        PreparedStatement ps = null;
	        ResultSet rs = null;
                ArrayList<Blog>  data= new ArrayList<Blog>();
               String query = "SELECT * from blog ORDER by datecreated DESC";
               try {
			ps = connection.prepareStatement(query);
			//ps.setString(1, '%'+cname+'%');
			rs = ps.executeQuery();
			while (rs.next()) {
                           Blog blog=new Blog();
				
				blog.setPostname(rs.getString("postname"));
				blog.setImageurl(rs.getString("imageurl"));
				blog.setBlog(rs.getString("blog"));
                                blog.setDatecreated(rs.getString("datecreated"));
                        data.add(blog);
                        }
                        
                        } catch (SQLException e) {
			System.out.println(e);
			return null;
		}
               
               finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closePreparedStatement(ps);
                        pool.freeConnection(connection);
		}
		return data;
	}
    public static void addblog(String postname,String imageurl,String post) {
		ConnectionPool connectionpool = ConnectionPool.getInstance();
		Connection connection = connectionpool.getConnection();
		PreparedStatement ps = null;
                String query = "INSERT INTO blog "
				+ "(postname, imageurl,blog) "
				+ "VALUES (?, ?, ?)";
                try{
                        ps = connection.prepareStatement(query);
			ps.setString(1, postname);
			ps.setString(2, imageurl);
			ps.setString(3, post);
                        ps.executeUpdate();
                }
                 catch (SQLException e) {
			System.out.println(e);

		} finally {
			DBUtil.closePreparedStatement(ps);
	                connectionpool.freeConnection(connection);
		}
    }
    public static ArrayList<Blog> searchpost(String postname){
                ConnectionPool pool = ConnectionPool.getInstance();
                Connection connection = pool.getConnection();
	        PreparedStatement ps = null;
	        ResultSet rs = null;
               ArrayList<Blog>  search = new ArrayList<Blog>();
               String query = "SELECT * from blog WHERE postname like ?";
               try {
			ps = connection.prepareStatement(query);
			ps.setString(1, '%'+postname+'%');
			rs = ps.executeQuery();
			while (rs.next()) {
                           Blog blog=new Blog();
                                blog.setPostid(rs.getInt("postid"));
				blog.setPostname(rs.getString("postname"));
				blog.setImageurl(rs.getString("imageurl"));
				blog.setDatecreated(rs.getString("datecreated"));
				blog.setBlog(rs.getString("blog"));
                        search.add(blog);
                        }
                        
                        } catch (SQLException e) {
			System.out.println(e);
			return null;
		}
               
               finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closePreparedStatement(ps);
                        pool.freeConnection(connection);
		}
		return search;
	}
     public static void updateblog(String postname,String imageurl,String post,int postid) {
		ConnectionPool connectionpool = ConnectionPool.getInstance();
		Connection connection = connectionpool.getConnection();
		PreparedStatement ps = null;
                String query = "UPDATE blog"+" SET postname = ?,"+"imageurl=?,"+"blog=?"+"WHERE postID=?";
				
                try{
                        ps = connection.prepareStatement(query);
                        ps.setString(1, postname);
			ps.setString(2, imageurl);
			ps.setString(3, post);
                        ps.setInt(4,postid );
                        int rows=ps.executeUpdate();
                        System.out.println(rows + " rows updated");
                }
                 catch (SQLException e) {
			System.out.println(e);

		} finally {
			DBUtil.closePreparedStatement(ps);
	                connectionpool.freeConnection(connection);
		}
    }
     public static void deleteblog(int postid) {
		ConnectionPool connectionpool = ConnectionPool.getInstance();
		Connection connection = connectionpool.getConnection();
		PreparedStatement ps = null;
                String query = "DELETE FROM blog WHERE postID=?";
				
                try{
                        ps = connection.prepareStatement(query);
                        
                        ps.setInt(1,postid );
                        int rows=ps.executeUpdate();
                        System.out.println(rows + " rows updated");
                }
                 catch (SQLException e) {
			System.out.println(e);

		} finally {
			DBUtil.closePreparedStatement(ps);
	                connectionpool.freeConnection(connection);
		}
    }
}

