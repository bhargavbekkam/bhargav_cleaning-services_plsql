
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page   import="databaseconnection.*" %>


<html>
<head>
        <%
try{
int id=0;
int x=0;
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String ph = request.getParameter("ph");
	String email = request.getParameter("email");
	String line1 = request.getParameter("line1");
	String line2 = request.getParameter("line2");
	String city = request.getParameter("city");
	String zip = request.getParameter("zip");






    Connection con = databasecon.getconnection();

    String callstring = " { call csignup1pcd(?,?,?,?,?,?,?,?) } ";
    CallableStatement cs = con.prepareCall(callstring);
    cs.setString(1, name);
    cs.setString(2, ph);
    cs.setString(3, email);
    cs.setString(4, pwd);
    cs.setString(5, line1);
    cs.setString(6, line2);
    cs.setString(7, city);
    cs.setString(8, zip);

    x = cs.executeUpdate();

    if (x==1){
      //  out.println(x);
       response.sendRedirect("csignup.jsp?id=succ");
    }
}


catch(Exception ex){
  // response.sendRedirect("csignup.jsp?id=dup");
   out.println("Error in connection : "+ex);

}


%>
