<%-- 
    Document   : searchdoc
    Created on : 26 Jul, 2023, 6:32:05 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- search_results.jsp -->
<!-- search_results.jsp -->
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor-search Online portal</title>
    <style>
        
         table,tr,td{
                border-collapse: collapse;
                padding: 8px;
                
            }
            body{
                background-color:silver;
            }   
    </style>
</head>
<body>
    <h1>Doctor imformations</h1>
    <%-- Retrieve the search parameters from the URL --%>
    <%
        String specialization = request.getParameter("spacialist");
        String district = request.getParameter("District");

        // JDBC connection parameters for Oracle
        String url = "jdbc:oracle:thin:@localhost:1521:xe";
        String username = "your_oracle_username";
        String password = "your_oracle_password";

        try{
            // Load the Oracle JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Establish the database connection
            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Jyoti@135");

            // Prepare the SQL query
            String sql = "SELECT * FROM d1 WHERE SPEACIALIST = ? AND DISTRICT = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, specialization);
            statement.setString(2, district);

            // Execute the query and retrieve the results
            ResultSet resultSet = statement.executeQuery();

            // Display the results
            while (resultSet.next()) {
                
                %>
                <table border="2">
                
                 
                  <tr style="font-weight: bold; text-align: center; background-color:lightseagreen">
      
                <td>FIRSTNAME</td>
                       
            
           
                <td>LASTNAME</td>
                <td>USERNAME</td>
                <td>EMAILID</td>
                
                <td>PASSWORD</td>
                <td>MOBILENO</td>
                <td>EXPERIANCE</td>
                                                                <td>SPEACIALIST</td>
                                                                <td>GENDER</td>
                                                                <td>AGE</td>
                                                                <td>STATE</td>
                                                                <td>DISTRICT</td>
                                                                <td>PINCODE</td>
                                                                <td>ADDRESS</td>
                                                                
            </tr>
                    
                    
                    <tr>
                        <td><%=resultSet.getString("FIRSTNAME") %></td>
                       <td><%=resultSet.getString("LASTNAME") %></td>
                        <td><%=resultSet.getString("USERNAME") %></td>
                         <td><%=resultSet.getString("EMAILID") %></td>
                          <td><%=resultSet.getString("PASSWORD") %></td>
                          <td><%=resultSet.getString("MOBILENO") %></td>
                                                    <td><%=resultSet.getString("EXPERIANCE") %></td>
                                                     <td><%=resultSet.getString("SPEACIALIST") %></td>
                                                    <td><%=resultSet.getString("GENDER") %></td>

                                                    <td><%=resultSet.getString("AGE") %></td>
                                                    <td><%=resultSet.getString("STATE") %></td>
                                                    <td><%=resultSet.getString("DISTRICT") %></td>
                                                    <td><%=resultSet.getString("PINCODE") %></td>
                                                    <td><%=resultSet.getString("ADDRESS") %></td>
                    </tr>
                    
                       </table>
              
          <%  }

            // Close the resources
            resultSet.close();
            statement.close();
            connection.close();
}
        catch(Exception e){
        
            e.printStackTrace();
        }
    %>
</body>
</html>