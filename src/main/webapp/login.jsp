<%@ page  import="java.sql.*"  import="CT.*" import="databaseconnection.*" %>
<%@ page import="javax.lang.model.util.Types" %>

<% session.setAttribute("msg",""); %>
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;



try
{
if(a.equals("admin")&&b.equals("admin"))
{
response.sendRedirect("admin_home.jsp");
}
	
else{
	Connection con1=databasecon.getconnection();

	String callstring = " {call login_auth_pcd(?,?,?,?,?,?)} " ;
	CallableStatement cs=con1.prepareCall(callstring);
	cs.setString(1,a);
	cs.setString(2,b);

    cs.registerOutParameter(3, java.sql.Types.VARCHAR);
	cs.registerOutParameter(4, java.sql.Types.VARCHAR);
	cs.registerOutParameter(5, java.sql.Types.VARCHAR);
	cs.registerOutParameter(6, java.sql.Types.VARCHAR);
	int x=cs.executeUpdate();

	String nn = cs.getString(3);
	String line1 = cs.getString(4);
	String line2 = cs.getString(5);
	String city= cs.getString(6);
	boolean bool = (x == 1);

	if(bool){

		name=nn;
		session.setAttribute("caddr",line1+", "+line2+", "+city);
		session.setAttribute("cemail",a);
		session.setAttribute("cname",name);
		response.sendRedirect("c_home.jsp");

	}else{

		response.sendRedirect("loginpage.jsp?m=fail");

	}

	}
	}
	
catch(Exception e1)
{
out.println(e1);
}

%>