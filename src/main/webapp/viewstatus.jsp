<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%
String title="View your requirement status";

%>


<%@ include file="cheader.jsp"%>

<%
	Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	Statement st1 = con1.createStatement();
	String sql="select * from requirement where client_email='"+session.getAttribute("cemail")+"' order by selected_date ";
	System.out.println(sql);
	ResultSet rs=st.executeQuery(sql);
	ResultSet rs1 = null;
	int tot =0;
	int sum = 0;

  
%>	
<Center>

<font size="+3" color="#f65900"><b>Details</h1></font><br><br><br>
<table cellspacing=10 width="83%" id="" border>

<tr><td><font size="" color="#004f9d"><b><b>Order Id<td><font size="" color="#004f9d"><b>Date<td><font size="" color="#004f9d"><b>Status<td><font size="" color="#004f9d"><b>Cost
<%while(rs.next())
	{
		%>
		<tr><td><font size="" color="#797979"><b><%=rs.getString(1)%>
		<td><font size="" color="#797979"><b><%=rs.getString("selected_date")%></font>
	
		
		<td><font size="" color="#797979"><b>Your Requirement is Received</b>
				
<%	
String sq = "select orderid,sum(cost) from requirementdetails where orderid='"+rs.getString(1)+"' GROUP BY orderid " ;
	System.out.println(sq);
	rs1= st1.executeQuery(sq);
	while (rs1.next()){
		System.out.println(rs1.getInt(2));
		%> 	
		


			 <td><font size="" color="#797979"><b><%=rs1.getInt(2)%>$</font>	<b>
		
<% 	} }     %>
	

											 
</table></b>
<br><br><br><br><br><br><br>

