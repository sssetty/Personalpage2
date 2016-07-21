/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Data.*;
import Model.*;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/blogcontroller")

public class BlogController extends HttpServlet {
    //public BlogController() {
    //	super();
    //	}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String url = "/index.jsp";
        if (action == null || action.equals("") || action.isEmpty()) {
            url = "/index.jsp";
        }
        if (action.equals("blog")) {

            ArrayList<Blog> blog = BlogData.getblogdata();
            session.setAttribute("blogdata", blog);

            url = "/blog.jsp";
        } else if (action.equals("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String pass;
            pass= UserData.getUser(username);
            if(pass==null){
                request.setAttribute("msg","No such user exists");
                url="/admin.jsp";
            }
            else if(pass.equals(password)){
                session.setAttribute("user",username);
                url="/adminportal.jsp";
            }
            else{
                
                request.setAttribute("msg","Incorrect Password");
                url="/admin.jsp";
            }

        }else if (action.equals("newblog")){
            String postname = request.getParameter("postname");
            String imageurl = request.getParameter("imageurl");
            String post = request.getParameter("post");
            BlogData.addblog(postname, imageurl, post);
            request.setAttribute("msg","Successfully added");
            url="/newblog.jsp";
          
            
            
        }
        else if (action.equals("editblog")){
            String postname = request.getParameter("postname");
            int postid = Integer.parseInt(request.getParameter("postid"));
            String imageurl = request.getParameter("imageurl");
            String post = request.getParameter("post");
            BlogData.updateblog(postname, imageurl, post,postid);
            request.setAttribute("msg","Successfully Updated");
            url="/editblog.jsp";
        }
        else if(action.equals("search")){
            String postname = request.getParameter("postname");
            ArrayList<Blog> blog = BlogData.searchpost(postname);
            session.setAttribute("searchdata", blog);
            url="/edit.jsp";
            
        }
        else if(action.equals("delete")){
            String postname = request.getParameter("postname");
            ArrayList<Blog> blog = BlogData.searchpost(postname);
            session.setAttribute("searchdata", blog);
            url="/deleteblog.jsp";
            
        }
         else if (action.equals("deleteblog")){
            int postid = Integer.parseInt(request.getParameter("postid"));
            
            BlogData.deleteblog(postid);
            request.setAttribute("msg","Successfully Deleted");
            url="/delete.jsp";
        }
        else {
            url = "/index.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
