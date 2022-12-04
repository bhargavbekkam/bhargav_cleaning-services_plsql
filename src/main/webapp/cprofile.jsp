
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.io.*,java.sql.*"%>
<%
String title="View Profile ";
%>


<%@ include file="cheader.jsp"%>

<%
	 String m=request.getParameter("id");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Profile Updated Successfully')</script>");
                                                       }

													if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<script>alert('Failed Check Your Session..')</script>");
                                                       }

	%>
<center>

<%

String email=(String)session.getAttribute("cemail");
int id=0;
Connection con=databasecon.getconnection();
String callstring = " {call client_details(?,?,?,?,?,?,?)} ";
	CallableStatement cs = con.prepareCall(callstring);
	cs.setString(1, email);

	cs.registerOutParameter(2, java.sql.Types.VARCHAR);
	cs.registerOutParameter(3, java.sql.Types.VARCHAR);
	cs.registerOutParameter(4, java.sql.Types.VARCHAR);
	cs.registerOutParameter(5, java.sql.Types.VARCHAR);
	cs.registerOutParameter(6, java.sql.Types.VARCHAR);
	cs.registerOutParameter(7, java.sql.Types.VARCHAR);
	int x = cs.executeUpdate();
     boolean bool = (x== 1);
	if(bool)
	{
	
%>






						<table id="tab" width="50%" border>
						<tr><th>
						<b>Name<td></b>
						<%=cs.getString("nam")%>
					
					
					<tr><th>
					
						<b>Phone<td></b>
						<%=cs.getString("phon")%>
					
					<tr><th>
						
					
						<b>Email<td></b>
									<%=email%>
			
					
			<tr><th>
						
					
						<b>Line 1<td></b>
						<%=cs.getString("l1")%>
<tr><th>
						
					
						<b>Line 2<td></b>
						<%=cs.getString("l2")%>
					
						
				</table>
<br>
<a href="updateprofile.jsp">Update Profile</a><br><br>

<%

}
%>


<%@ include file="footer.jsp"%>