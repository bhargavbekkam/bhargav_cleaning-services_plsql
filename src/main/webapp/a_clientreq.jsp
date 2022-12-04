<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%
String title="Client Requirements";

%>

<%@ include file="aheader.jsp"%>
<%
	Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from requirement where status='new' order by selected_date");
%>	
<Center>
<font size="+1" color="#ff6600"><%=session.getAttribute("msg")%></font>
<% session.setAttribute("msg",""); %>
<br>
<h3><b>Client Requirements  </h1></h2>
<table cellspacing=10 width="83%">
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>

<tr><td><font size="" color="#004f9d"><b>Sno<td><font size="" color="#004f9d"><b><b>Client Name<td><font size="" color="#004f9d"><b>Date<td><font size="" color="#004f9d"><b>Details
<% int i=1;
while(rs.next())
	{
		%>
		<tr><td><%=i++%><td><font size="" color="#797979"><b><%=rs.getString(2)%>

		<td><font size="" color="#797979"><b><%=rs.getString("selected_date")%></font>

		<td><font size="" color="#797979"><b><a href="a_viewdetails.jsp?id=<%=rs.getString("orderid")%>"><font size="" color="#797979"><b>View Details</a>



<%
	}

												


                                               %>
											 
</table></b>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>
