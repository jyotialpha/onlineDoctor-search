<%-- 
    Document   : logindoctor
    Created on : 22 Jul, 2023, 4:43:26 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
    <body>
        <h1>Loin</h1>
        
            <% 
                try{
            /* TODO output your page here. You may use following sample code. */
             String name=request.getParameter("username");
            
            String password=request.getParameter("password");
            
           
           
           //out.println(name+Gender+UserName+UserPass+UserPan+UserCountry);
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
                
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Jyoti@135");
                
            PreparedStatement ps=con.prepareStatement("select*from d1 WHERE USERNAME=? AND PASSWORD=?");
            
            
            ps.setString(1, name);
            ps.setString(2,password);
            
             ResultSet rs =ps.executeQuery();
             
             
             if(rs.next()){
                 out.println("login Successfull");
                    response.sendRedirect("afterlogindoc.html");

             }
             
             else{
//                 out.println("try again");
                 response.sendRedirect("tryagaindoc.html");
             }
             
           
           
           
        }
        
        catch(Exception e)
        {
          e.printStackTrace();
          
        }
        
    

            
            %>
       
    </body>
</html>