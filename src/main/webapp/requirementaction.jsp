<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>

<html>
<head>

<%
	String cemail= session.getAttribute("cemail")+"";
	String cname= session.getAttribute("cname")+"";



	String addr = request.getParameter("addr");
	String time1= request.getParameter("time1");
	




try{

int id=RandomN.get();
Connection con=databasecon.getconnection();

ResultSet rs=null;

PreparedStatement ps=null;
ps=con.prepareStatement("INSERT INTO requirement VALUES(?,?,?,?,?,?,?)");
			
ps.setInt(1,id);
ps.setString(2,cname);
ps.setString(3,cemail);

ps.setString(4,request.getParameter("time1"));
ps.setString(5, "");
ps.setString(6,addr);
ps.setString(7,"new");
int s = ps.executeUpdate();



	


	int ch1 = Integer.parseInt(request.getParameter("vacuuming"));
	if(ch1>0){
		ps=con.prepareStatement("INSERT INTO requirementdetails VALUES(?,?,?,?)");
		ps.setInt(1,id);
		ps.setString(2,"Vacuuming");
		ps.setInt(3,ch1);
		ps.setInt(4,ch1*1);
		s = ps.executeUpdate();			
	}
	ch1 = Integer.parseInt(request.getParameter("mopping"));
	if(ch1>0){
		ps=con.prepareStatement("INSERT INTO requirementdetails VALUES(?,?,?,?)");

		ps.setInt(1,id);
		ps.setString(2,"Mopping");
		ps.setInt(3,ch1);
		ps.setInt(4,ch1*1);
		s = ps.executeUpdate();			
	}
	ch1 = Integer.parseInt(request.getParameter("dusting"));
	if(ch1>0){
				ps=con.prepareStatement("INSERT INTO requirementdetails VALUES(?,?,?,?)");

		ps.setInt(1,id);
		ps.setString(2,"Dusting");
		ps.setInt(3,ch1);
		ps.setInt(4,ch1*1);
		s = ps.executeUpdate();			
	}
	 ch1 = Integer.parseInt(request.getParameter("bathroom"));
	if(ch1>0){
				ps=con.prepareStatement("INSERT INTO requirementdetails VALUES(?,?,?,?)");

		ps.setInt(1,id);
		ps.setString(2,"Bathroom Cleaning");
		ps.setInt(3,ch1);
		ps.setInt(4,ch1*1);
		s = ps.executeUpdate();			
	}
	 ch1 = Integer.parseInt(request.getParameter("kitchen"));
	if(ch1>0){
				ps=con.prepareStatement("INSERT INTO requirementdetails VALUES(?,?,?,?)");

		ps.setInt(1,id);
		ps.setString(2,"Kitchen Cleaning");
		ps.setInt(3,ch1);
		ps.setInt(4,ch1*1);
		s = ps.executeUpdate();			
	}

	
	session.setAttribute("msg", "Your Requirement is Collected, You can check status in 'View Status' ");
	response.sendRedirect("requirement.jsp");

}

catch(Exception ex){

out.println("Error in connection : "+ex);
ex.printStackTrace();

}





%>
