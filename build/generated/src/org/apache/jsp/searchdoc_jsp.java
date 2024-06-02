package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;

public final class searchdoc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("<!DOCTYPE html>    \n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>All Doctor Details</title>\n");
      out.write("        <style>\n");
      out.write("            table,tr,td{\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                padding: 8px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-color: aqua;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <center> <h1 style=\"font-family: 'Franklin Gothic Medium', 'Arial Narrow'\">Nearby Doctors...</h1></center>\n");
      out.write("        <table border=\"2\">\n");
      out.write("     \n");
      out.write("            ");

                String spacialist = request.getParameter("spacialist");
                String dist = request.getParameter("District");

                
                try{
                    
                                   
                     Class.forName("oracle.jdbc.driver.OracleDriver");

          Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","Jyoti@135");
                    
//                    String sql="Select name,department,gender,age,experience,mobile_no,adhar,email,qualification,country,state,district,pincode,username,password from DRegistration where department=? and  district=?";
                              
                   

            PreparedStatement ps=con.prepareStatement("select*from d1 WHERE DISTRICT=? AND SPEACIALIST=?");

                   PreparedStatement ps1 = con.prepareStatement("Select FIRSTNAME,LASTNAME,USERNAME,EMAILID,PASSWORD,MOBILENO,EXPERIANCE,SPEACIALIST,GENDER,AGE,STATE,DISTRICT,PINCODE from d1 where SPEACIALIST=? and  DISTRICT=?");

                    ps1.setString(1, spacialist);
                    ps1.setString(2, dist);
                    
                    
                      ps.setString(1, dist);
                    ps.setString(2, spacialist);
//                    Statement statement=con.createStatement();
//                    Connection connection=null;
//                    ResultSet resultSet=statement.executeQuery(sql);


                        ResultSet resultSet = ps1.executeQuery();
                    
                                                ResultSet resultSet1 = ps.executeQuery();


                    if(resultSet1.next())
                    {
                        
                       

                        
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                          <tr style=\"font-weight: bold; text-align: center; background-color: greenyellow\">\n");
      out.write("\n");
      out.write("                <td>FIRSTNAME</td>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("                <td>LASTNAME</td>\n");
      out.write("                <td>USERNAME</td>\n");
      out.write("                <td>EMAILID</td>\n");
      out.write("                \n");
      out.write("                <td>PASSWORD</td>\n");
      out.write("                <td>MOBILENO</td>\n");
      out.write("                <td>EXPERIANCE</td>\n");
      out.write("                                                                <td>SPEACIALIST</td>\n");
      out.write("                                                                <td>GENDER</td>\n");
      out.write("                                                                <td>AGE</td>\n");
      out.write("                                                                <td>STATE</td>\n");
      out.write("                                                                <td>DISTRICT</td>\n");
      out.write("                                                                <td>PINCODE</td>\n");
      out.write("                                                                <td></td>\n");
      out.write("                                                                <td></td>\n");
      out.write("            </tr>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("FIRSTNAME") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("LASTNAME") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("USERNAME") );
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(resultSet.getString("EMAILID") );
      out.write("</td>\n");
      out.write("                          <td>");
      out.print(resultSet.getString("PASSWORD") );
      out.write("</td>\n");
      out.write("                          <td>");
      out.print(resultSet.getString("MOBILENO") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("EXPERIANCE") );
      out.write("</td>\n");
      out.write("                                                     <td>");
      out.print(resultSet.getString("SPEACIALIST") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("GENDER") );
      out.write("</td>\n");
      out.write("\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("AGE") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("STATE") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("DISTRICT") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("PINCODE") );
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                       </table>\n");
      out.write("          \n");
      out.write("          <br>         \n");
      out.write("          <br>\n");
      out.write("          \n");
      out.write("                  <form action=\"#\" method=\"post\" ><button class=\"button yourDetails\">Book An Appointment</button></form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                 \n");
      out.write("                    ");

                        }
else{

      out.write("\n");
      out.write("<h3>No data found</h3>\n");
      out.write("                    ");

}
con.close();
}
catch(Exception e)
                {
                    
                }
                
                
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("     \n");
      out.write("            \n");
      out.write("   \n");
      out.write("        \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
