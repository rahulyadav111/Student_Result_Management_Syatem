<%@page import="Package.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
	String rollnum = request.getParameter("rollNo");
String physics = request.getParameter("physics");
String chemistry = request.getParameter("chemistry");
String math = request.getParameter("math");
String electrical = request.getParameter("electrical");
String electronic = request.getParameter("electronic");
String chemistryLab = request.getParameter("chemistryLab");
String physicsLab = request.getParameter("physicsLab");

try {
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	//st.executeUpdate("insert into result values('"+rollnum+"','"+physics+"','"+chemistry+"','"+math+"','"+electrical+"','"+electronic+"','"+chemistryLab+"','"+physicsLab+"')");

	//st.executeUpdate("insert into result values(rollnum + "," + physics+","+chemistry,","+math +","+electrical+","+electronic+","+chemistryLab+","+physicsLab)");

	//st.execute("insert into result(roll_num,physics,chemistry,math,electrical,electronic,chemistry_Lab,physics_Lab) values('"+rollnum+"','"+physics+"','"+chemistry+"','"+math+"','"+electrical+"','"+electronic+"','"+chemistryLab+"','"+physicsLab+"')");

	st.executeUpdate("insert into result values('" + rollnum + "','" + physics + "','" + chemistry + "','" + math
	+ "','" + electrical + "','" + electronic + "','" + chemistryLab + "','" + physicsLab + "')");

//	String s = "insert into result values('" + rollnum + "','" + physics + "','" + chemistry + "','" + math + "','"
//	+ electrical + "','" + electronic + "','" + chemistryLab + "','" + physicsLab + "')";
	
	
	//out.println(s);

	response.sendRedirect("adminHome.jsp");
} catch (Exception e) {
	out.println(e);
}
%>