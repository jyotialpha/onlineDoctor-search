<%-- 
    Document   : adminprereg
    Created on : 23 Jul, 2023, 7:33:28 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<html>
    <head>
         <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h1>Admin Pre-Registration</h1>
        
            <% 
                try{
            /* TODO output your page here. You may use following sample code. */
             String name=request.getParameter("username");
            
            String password=request.getParameter("password");
            
           
           
           //out.println(name+Gender+UserName+UserPass+UserPan+UserCountry);
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
                
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Jyoti@135");
                
            PreparedStatement ps=con.prepareStatement("select*from admin WHERE NAME=? AND PASSWORD=?");
            
            
            ps.setString(1, name);
            ps.setString(2,password);
            
             ResultSet rs =ps.executeQuery();
             
             
             if(rs.next()){
//                 out.println("login Successfull");    
                 
               %>  
                 
               <section>
           
            <a href="Adminregistration.html" class="btn">Admin Registration</a>
        </section>  
                 
                 
                 
           <% }
             
             else{
                 out.println("try again");
             }
             
           
           
           
        }
        
        catch(Exception e)
        {
          e.printStackTrace();
          
        }
        
    

            
            %>
       
    </body>
</html>