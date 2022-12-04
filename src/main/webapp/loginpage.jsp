


<%
String title="Login Page";
%>
<%@  include file="header.jsp"%>

<table align=right cellspacing=20>
	<tr>
		<td>
		<td>
			<%
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
		
</table>


<form method="post" action="login.jsp">

	<center>
		<h2>
			Login
			</h1>
			<br>
			<br>

			<table width="42%">
				<tr>
					<td><input type="text" class="form-control" required
						name="uid" placeholder="Enter User id">
				<tr>
					<td><input type="password" class="form-control" required
						name="pwd" placeholder="Enter Password">
				<tr>
					<td><br> <input class="form-control" type="submit"
						value="Login">
					</div>



						</form>
			</table>
			<br> <br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>





			<%@  include file="footer.jsp"%>