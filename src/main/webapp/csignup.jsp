<%@ page   import="databaseconnection.*" %>
<%@ page import="java.io.*,java.sql.*"%>
<%
String title="Client Sign-up";
%>
<%@ include file="header.jsp"%>

	

				      <%
                                                       String m=request.getParameter("m");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("dup"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Duplicate Email  !! </blink></font></h3>");
                                                       }
                                               %>

 <form name="reg" action="csignup1.jsp" method="get"   name="pwForm" >
					                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&!id.equals("fail") )
                                                       {
                                                               out.println("<blink><h4><font color=#1e53df>Client Signup is Successful. You can login !!</font></font></h2><br>");
                                                       }
													   else {%>
												
                                               <%}%>

				
					<fieldset><center>
    <h3>Client Registration</h3>


						<table ALIGN="CENTER">
						
				
<tr><td align="right" ><b>

					
						Name<br>
						<input type="text" required  name="name" id = "name"    size="50" class="form-control">
					
		
					
			<tr><td align="right"><b>
						
					
						Email<br>
						<input type="email" name="email" id="email"    size="50" class="form-control">
			
			<tr><td align="right"><b>
						Phone no<br>
						<input type="text" required  name="ph"  	    size="50" class="form-control">
			<tr><td align="right"><b>
						Line 1<br>
						<input type="text" required  name="line1"  	    size="50" class="form-control">
			<tr><td align="right"><b>
						Line 2<br>
						<input type="text" required  name="line2"  	    size="50" class="form-control">
			<tr><td align="right"><b>
						City<br>
						<input type="text" required  name="city"  	    size="50" class="form-control">
			<tr><td align="right"><b>
						Zip<br>
						<input type="text" required  name="zip"  	    size="50" class="form-control">
					
					<tr><td align="right"><b>
						
					
						Password<br>
						<input type="password" required  name="pwd" id="gpwd"  class="form-control" > 
						
					
		<tr><td>
		
<input type="submit" value="Signup"  size="20" class="form-control">

					
					</form>
				
<br><br><br>
					</table>
   

<%@ include file="footer.jsp"%>