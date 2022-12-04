<%@ page   import="databaseconnection.*" %>
<%@ page import="java.io.*,java.sql.*"%>

<%
String title="Update Profile Information";
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

	 				

 <form name="reg" action="updateprofileaction.jsp" method="post"   name="pwForm" >
					                 


<%
try{



	String email = (String) session.getAttribute("cemail");
	int id = 0;

	Connection con = databasecon.getconnection();
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

/**
	String ph = cs.getString(2);
	String nn = cs.getString(3);
	String line1 = cs.getString(4);
	String line2 = cs.getString(5);
	String city = cs.getString(6);
	String zip = cs.getString(7);
**/

/**
	Statement st = con.createStatement();
		
	String query = "select * from client where email='"+email+"' ";

	ResultSet rs=st.executeQuery(query);

	if(rs.next())
	{
	**/

%>

	 <table ALIGN="CENTER" id="tab">
		 <tr><td>
			 Name<BR>
			 <div class="opinion">
				 <input type="text"  name="name" id = "name" value="<%=cs.getString("nam")%>"   required size="50">
		 <tr><td>

		 <tr><td>

			 Phone<br>
			 <input type="text" name="phone" id = "addr" value="<%=cs.getString("phon")%>"   required size="50">

		 <tr><td>

			 Line 1<br>
			 <input type="text" name="line1" id = "addr" value="<%=cs.getString("l1")%>"   required size="50">

		 <tr><td>

			 Line 2<br>
			 <input type="text" name="line2" id = "addr" value="<%=cs.getString("l2")%>"   required size="50">

		 <tr><td>

			 City<br>
			 <input type="text" name="city" id = "addr" value="<%=cs.getString("cit")%>"   required size="50">

		 <tr><td>

			 Zip<br>
			 <input type="text" name="zip" id = "addr" value="<%=cs.getString("zi")%>"   required size="50">

		 <tr><td>

			 <br>
			 <button class="btn1 btn-1 btn-1b">Update</button>

 </form>
</table>
</div>






<%
	}
	catch(Exception e){
		out.println(e);
	}

//}
%>


<%@ include file="footer.jsp"%>