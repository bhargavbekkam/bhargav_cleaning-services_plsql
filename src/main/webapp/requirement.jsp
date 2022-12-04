<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%

String title="Provide your requirement in Cleaning Services";

%>

<%@ include file="cheader.jsp"%>

<center>

<font size="+1" color="#ff6600"><%=session.getAttribute("msg")%></font>
<% session.setAttribute("msg",""); %>
<form method="post" action="requirementaction.jsp">
	
			<table width="80%" id="tab">
			
			<tr ><th colspan="2">Select Date

		<br><b><input type="date" name="time1" required>
			
			
			<tr ><td colspan="2">Select Services which you required
			<tr ><td colspan="2"><b><input type="checkbox" name="ch1">&nbsp;&nbsp;Vacuuming </b><br>Enter Messurement in Sq.ft &nbsp;&nbsp;<input type="number" name="vacuuming" value="0" min="0">
			<tr ><td colspan="2"><b><input type="checkbox" name="ch2">&nbsp;&nbsp;Mopping </b><br>Enter Messurement in Sq.ft &nbsp;&nbsp;<input type="number" name="mopping" value="0" min="0">
			<tr ><td colspan="2"><b><input type="checkbox" name="ch3">&nbsp;&nbsp;Dusting </b><br>Enter Messurement in Sq.ft &nbsp;&nbsp;<input type="number" name="dusting" value="0" min="0">
			<tr ><td colspan="2"><b><input type="checkbox" name="ch4">&nbsp;&nbsp;Bathroom Cleaning </b><br>Enter Messurement in Sq.ft &nbsp;&nbsp;<input type="number" name="bathroom" value="0" min="0">
			<tr ><td colspan="2"><b><input type="checkbox" name="ch5">&nbsp;&nbsp;Kitchen Cleaning</b><br>Enter Messurement in Sq.ft &nbsp;&nbsp;<input type="number" name="kitchen" value="0" min="0">


			<tr ><td colspan="2"><b>Address<br>

			<textarea name="addr" class="form-control"rows="" cols="80" ><%=session.getAttribute("caddr")%></textarea>
			
			<tr><td colspan="2"> <input type="submit" value="Submit"> 




			</table>
</form>
<%@ include file="footer.jsp"%>
