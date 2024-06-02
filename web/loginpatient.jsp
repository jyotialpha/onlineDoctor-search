<%-- 
    Document   : loginpatient
    Created on : 22 Jul, 2023, 5:37:23 PM
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
                
            PreparedStatement ps=con.prepareStatement("select*from patientreg WHERE USERNAME=? AND PASSWORD=?");
            
            
            ps.setString(1, name);
            ps.setString(2,password);
            
             ResultSet rs =ps.executeQuery();
             
            while(rs.next()){
               //STORE USER INFOR MATION IN THE SESSION
                String Name = rs.getString("USERNAME");
                String email =rs.getString("EMAILID");
               //STORE THE ATTRIBUTE IN THE SESSION
               session.setAttribute("username",Name);
               session.setAttribute("EMAILID",email );
               //redirect to the instruction page after successfull registration
               
                
               response.sendRedirect("patientsearchdoc1.html");
               
               System.out.println(rs.getString("USERNAME"));
               return;
                
            }
            response.sendRedirect("tryagainpatient.html");
                rs.close();
                ps.close();
                con.close();
        }
        
        catch(Exception e)
        {
          e.printStackTrace();
          
        }
        
    

            
            %>
       
    </body>
</html>