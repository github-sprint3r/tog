<%@page import="javax.swing.text.html.Option"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="condb.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
<form class="navbar-form navbar-left" role="search">
  <div class="form-group">
    <%
    try{
	Statement st;
	String query = "select * from  CarPark.Building d  where isEnable=1";
	st = conn.createStatement();
	ResultSet rs = st.executeQuery(query);
	String optionss = "<select> ";

	 while(rs.next())
	 {
		 optionss += "<option value=\""+ rs.getString(2) + "\">"+rs.getString(2)+"</option>";
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
   <a class="navbar-brand" href="#">Building Name</a>
  <button type="submit" class="btn btn-default">Search</button>
  
  
</form>
</nav>
<table class="table">
    <thead>
        <tr>
            <th>NO</th>
            <th>Building Name</th>
            <th>Floor</th>
            <th>Park Qty</th>
        </tr>
    </thead>
    
</table>

</body>
</html>