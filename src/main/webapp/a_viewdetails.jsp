<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ page  import="java.util.*" import="CT.*" %>

<%
String title="View Details";

%>

<%@ include file="aheader.jsp"%>
<%
String oid=request.getParameter("id");
	Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	Statement st2 = con1.createStatement();
		ResultSet rs2=null;
	ResultSet rs=st.executeQuery("select * from requirement where orderid='"+oid+"' ");
%>	
<Center>


<table cellspacing=10 width="53%" border>

<% int i=1;
while(rs.next())
	{
		%>
		<tr><th width="30%">Client Name<td><font size="" color="#797979"><b><%=rs.getString(2)%>
		
		<tr><th>Date<td><font size="" color="#797979"><b><%=rs.getString("selected_date")%></font>
		<tr><th>Address<td><font size="" color="#797979"><b><%=rs.getString("Address")%></font>
		




<%


rs2=st2.executeQuery("select * from requirementdetails where orderid='"+oid+"' ");
%>	
</table>

<br><br><br>


<table cellspacing=10  width="43%" border>

<tr><th><b>Sno<th><b><b>Service<th><b><b>Sq.Ft<th><b>Cost
<%  i=1;
int tot=0;
while(rs2.next())
	{
		%>
		<tr><td><%=i++%><td><font size="" color="#797979"><b><%=rs2.getString(2)%>
		<td><font size="" color="#797979"><b><%=rs2.getString(3)%>
		<td><font size="" color="#797979"><b><%=rs2.getString(4)%>
<%
	}
						%>					 

</table>

<br><br><br>
<h3>

<%
	
	}
%>

</table>

	
	<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>
