<%-- 
    Document   : Patientupdate
    Created on : 26 Jul, 2023, 8:53:49 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>



<html>
    <body>
        <h1>Registration</h1>
        
            <% 
                try{
            /* TODO output your page here. You may use following sample code. */
             String Firstnamee=request.getParameter("Firstname");
            String Lastname=request.getParameter("Lastname");
            String username=request.getParameter("username");
            String emailid=request.getParameter("email");
            String password=request.getParameter("password");
            String Mobileno = request.getParameter("Mobileno");
            
            
            String gender=request.getParameter("gender");
            String Age=request.getParameter("Age");
            String State=request.getParameter("State");
            String District=request.getParameter("District");
            String pincode=request.getParameter("pincode");
        
            
           
           
           //out.println(name+Gender+UserName+UserPass+UserPan+UserCountry);
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
                
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Jyoti@135");
                
            PreparedStatement ps=con.prepareStatement("update  patientreg SET FIRSTNAME=?,LASTNAME=?,USERNAME=?,EMAILID=?,PASSWORD=?,MOBILENO=?,GENDER=?,AGE=?,STATE=?,DISTRICT=?WHERE PINCODE=? ");
            ps.setString(1, Firstnamee);
            ps.setString(2, Lastname);
            ps.setString(3,username);
            ps.setString(4,emailid);
            ps.setString(5,password);
            ps.setString(6,Mobileno);
            
            
            
            ps.setString(7,gender);
            ps.setString(8,Age);
            ps.setString(9,State);
            
            ps.setString(10,District);
            ps.setString(11,pincode);
            
            ps.executeUpdate();
            ps.close();
            out.println("updated  Successfully");
           
        }
        
        catch(Exception e)
        {
          e.printStackTrace();
          
        }
        
    

            
            %>
       
    </body>
</html>