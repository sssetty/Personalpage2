/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
public class Blog implements Serializable{
    private int postid;
    private String postname;
    private String imageurl;
    private String blog;
    private String datecreated;
     public Blog (){
         
     }
   public void setPostid(int postid){
        this.postid=postid;
    }
     public int getPostid(){
      return postid;
  }
    public void setPostname(String postname){
        this.postname=postname;
    }
     public String getPostname(){
      return postname;
  }
     public String getBlog(){
      return blog;
  }
     public void setBlog(String blog){
        this.blog=blog;
    }
     public String getImageurl(){
      return imageurl;
  }
    public void setImageurl(String imageurl){
        this.imageurl=imageurl;
    }
    
    
    public String getDatecreated(){
      return datecreated;
  }
    public void setDatecreated(String datecreated){
        this.datecreated=datecreated;
    }
}
