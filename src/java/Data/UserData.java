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
public class UserData {
    public static String[] getUser(String username){
        ConnectionPool pool = ConnectionPool.getInstance();
                Connection connection = pool.getConnection();
	        PreparedStatement ps = null;
	        ResultSet rs = null;
                
               String query = "SELECT * from admin where username = ? ";
               try {
	            ps = connection.prepareStatement(query);
	            ps.setString(1,username);
	            
	            rs= ps.executeQuery();
	            while (rs.next())
	            {
                        String[] user=new String[2];
                        
                	user[0]=rs.getString("password");
                        user[1]=rs.getString("username");
                        return user;
                        
                    }
                    
	        } catch (SQLException e) {
	            System.out.println(e);
	           return null;
	        } finally {
	            DBUtil.closePreparedStatement(ps);
	            pool.freeConnection(connection);
	        }
			return null;
         }
        
    }

