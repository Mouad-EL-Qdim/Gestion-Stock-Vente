package org.sid.web;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import org.sid.entities.users;
import org.sid.service.ICatalogueService;
import org.sid.service.SingletonService;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

   private int codeUser;
   private String login;
   private String pass;
   public users user=new users();
	public List<users> users;
	public int codeU;
	@Autowired
	private ICatalogueService service=SingletonService.getService();
	 public int getCodeUser() {
			return codeUser;
		}

		public void setCodeUser(int codeUser) {
			this.codeUser = codeUser;
		}

		public String getLogin() {
			return login;
		}

		public void setLogin(String login) {
			this.login = login;
		}

		public String getPass() {
			return pass;
		}

		public void setPass(String pass) {
			this.pass = pass;
		}
   public String execute() {
      String ret = ERROR;
      Connection conn = null;

      try {
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/gs_vente", "root", "");
         String sql = "SELECT login FROM users WHERE";
         sql+=" login = ? AND pass = ?";
         PreparedStatement ps = conn.prepareStatement(sql);
         ps.setString(1, login);
         ps.setString(2, pass);
         ResultSet rs = ps.executeQuery();

         while (rs.next()) {
        	 login = rs.getString(1);
            ret = SUCCESS;
         }
      } catch (Exception e) {
         ret = ERROR;
      } finally {
         if (conn != null) {
            try {
               conn.close();
            } catch (Exception e) {
            }
         }
      }
      return ret;
   }
   public String addUsers() {


   try {
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/gs_vente", "root", "");

       String sql = "INSERT INTO users (codeUser,login, pass) values (?, ?, ?)";
       PreparedStatement statement = conn.prepareStatement(sql);
       statement.setInt(1,codeUser );
       statement.setString(2,login );
       statement.setString(3, pass);
       int row = statement.executeUpdate();
       
       conn.close();
   } catch (SQLException ex) {
       ex.printStackTrace();
   }
   				return SUCCESS;
   }
   
   public String updatePas() {
	   user=service.getUser(codeU);
	   users=service.listsUsers();
	   return SUCCESS;
   }
   
   public String indexUser() {
	   users=service.listsUsers();
	   return SUCCESS;
	   
   }
   
   public String savePass() {
	    String sql = "UPDATE  `gs_vente`.`users` SET  `pass` =  ? WHERE  `users`.`login` =? ";

	    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/gs_vente", "root", "");
	        PreparedStatement stmt = conn.prepareStatement(sql);) {
	      stmt.setString(1,pass );
	      stmt.setString(2, login);
	      stmt.executeUpdate();
	      
	      System.out.println(" updated successfully ");
	    } catch (SQLException e) {
	      e.printStackTrace();
	    }
	   return SUCCESS;
	   
   }
}