
<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>

<%
int id=0;
Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();

%>

<% 

ResultSet rs=null;

PreparedStatement ps=null;

	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String city = request.getParameter("city");
	String line1 = request.getParameter("line1");
	String line2 = request.getParameter("line2");
	String zip = request.getParameter("zip");


	


       try
                {	  
					String email=(String)session.getAttribute("cemail");
Connection con=databasecon.getconnection();
 String callstring = " { call profile_update_action(?,?,?,?,?,?,?) } " ;
    CallableStatement cs=con.prepareCall(callstring);
    cs.setString(1,name);
    cs.setString(2,phone);
    cs.setString(3,city);
    cs.setString(4,line1);
    cs.setString(5,line2);
    cs.setString(6,zip);
    cs.setString(7,email);

int s = cs.executeUpdate();
//boolean bool = (s == 1);
if(s>0){
response.sendRedirect("updateprofile.jsp?id=succ");
}
else{
response.sendRedirect("updateprofile.jsp?id=fail");

}
}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
