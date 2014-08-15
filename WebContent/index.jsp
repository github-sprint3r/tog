<%@page import="javax.swing.text.html.Option"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="condb.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car Park</title>
</head>
<body>
<%
try{
	Statement st;
	String query = "select * from  CarPark.Building d  where isEnable=1";
	st = conn.createStatement();
	ResultSet rs = st.executeQuery(query);
	String optionss = "<select> ";

	 while(rs.next())
	 {
		 optionss += "<option value=\""+ rs.getString(1) +"\">" + rs.getString(2) + "</option>";
	 } 
	 optionss += "</select>";
	 conn.close();
	 out.print(optionss);
%>
	
<%
}
catch(Exception e){
	out.println("Error Connect!!!!!!" + e);
}
%>

</body>
</html>