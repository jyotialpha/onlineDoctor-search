<%-- 
    Document   : regpatient
    Created on : 22 Jul, 2023, 2:16:50 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
    <body>
        <h1>Registration</h1>
        
            <% 
                try{
            /* TODO output your page here. You may use following sample code. */
             String name=request.getParameter("username");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            
           
           
           //out.println(name+Gender+UserName+UserPass+UserPan+UserCountry);
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
                
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Jyoti@135");
                
            PreparedStatement ps=con.prepareStatement("insert into patient values(?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3,password);
            ps.executeUpdate();
            out.println("Registerd  Successfully...");
           
        }
        
        catch(Exception e)
        {
          e.printStackTrace();
          
        }
        
    

            
            %>
       
    </body>
</html>