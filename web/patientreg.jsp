<%-- 
    Document   : patientreg
    Created on : 23 Jul, 2023, 8:33:25 PM
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
             String Firstname=request.getParameter("Firstname");
            String Lastname=request.getParameter("Lastname");
            String username=request.getParameter("username");
            String emailid=request.getParameter("email");
            String password=request.getParameter("password");
            String MobileNo = request.getParameter("Mobileno");
            
            String gender=request.getParameter("gender");
            String Age=request.getParameter("Age");
            String State=request.getParameter("State");
            String District=request.getParameter("District");
            String pincode=request.getParameter("pincode");
            String textarea=request.getParameter("textarea");
            
           
           
           //out.println(name+Gender+UserName+UserPass+UserPan+UserCountry);
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
                
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Jyoti@135");
                
            PreparedStatement ps=con.prepareStatement("insert into patientreg values(?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, Firstname);
            ps.setString(2, Lastname);
            ps.setString(3,username);
            ps.setString(4,emailid);
            ps.setString(5,password);
            ps.setString(6,MobileNo);
           
            ps.setString(7,gender);
            ps.setString(8,Age);
            ps.setString(9,State);
            ps.setString(10,District);
            ps.setString(11,pincode);
            ps.setString(12,textarea);
            ps.executeUpdate();
            out.println("Registerd  Successfully");
           
        }
        
        catch(Exception e)
        {
          e.printStackTrace();
          
        }
        
    

            
            %>
       
    </body>
</html>