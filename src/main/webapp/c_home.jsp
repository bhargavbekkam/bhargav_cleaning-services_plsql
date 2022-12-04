<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ page import="CT.*" %>


<%
String title="Client Portal";
%>
<%@  include file="cheader.jsp"%>
		<center><h2><table align="center">
		<tr>
			<td>Welcome <%=session.getAttribute("cname")%></td>
		</tr>
		</table></h2></center>


<br><br><br><br><br><br><br><br>
   

											   


<%@  include file="footer.jsp"%>