<%-- 
    Document   : adminpasschange
    Created on : 24 Jul, 2023, 1:54:30 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
    </head>
    <body>
        <%
            try{
            /* TODO output your page here. You may use following sample code. */
           
            String pass = request.getParameter("CuttentPassword:");
              
              if(pass.equals(""))
              {
                  out.println("Enter current password");
              }else{
                  
              
          Class.forName("oracle.jdbc.driver.OracleDriver");
                
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Jyoti@135");
                    
                PreparedStatement ps = con.prepareStatement("select * from adminreg where PASSWORD = ?");
                
                ps.setString(1, pass);
                        
                ResultSet rs = ps.executeQuery();
                
                
                if(rs.next())
                {
                    
                    String newpass = request.getParameter("NewPassword");
                    String conform = request.getParameter("ConformPassword");
                    
                    
                    if(newpass.equals(""))
                    {
                        out.println("Enter New Password");
                    }else if(conform.equals(""))
                    {
                        out.println("Enter conform password");
                    }
                    
                   else if(newpass.equals(conform))
                    {
                         PreparedStatement ps1 = con.prepareStatement("update adminreg set PASSWORD = ? where PASSWORD = ?");
                         
                                ps1.setString(1, conform);
                                ps1.setString(2, pass);
                                ps1.executeUpdate();
                                out.println("Password Updated");
                    }else
                    {
                        out.println("New Password  Conform Password  was incurrect");
                    }
                    
                }
                else{
                    out.println("incorrect current Password");
                }
            
       
              }
            
            
        }
        catch(Exception e){
            e.printStackTrace();
                    
        }
    
            
            %>
        
    </body>
</html>
