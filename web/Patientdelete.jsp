<%-- 
    Document   : Patientdelete
    Created on : 26 Jul, 2023, 9:04:59 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletionpatient Page</title>
    </head>
    <body>
        <%
            try{
                
                
                
                  
            String password=request.getParameter("password");
            String Mobileno = request.getParameter("Mobileno");
            
          
           
           //out.println(name+Gender+UserName+UserPass+UserPan+UserCountry);
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
                
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Jyoti@135");
                
            PreparedStatement ps=con.prepareStatement("DELETE FROM  patientreg WHERE PASSWORD=? AND MOBILENO=?");
           
            ps.setString(1,password);
            ps.setString(2,Mobileno);
            
          
            
            ps.executeUpdate();
            ps.close();
            out.println("Deleted  Successfully");
         
               
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
            
            %>
        
        
        
    </body>
</html>
