<%@include file="condb.jsp" %>
<%
Statement st;
String query = "select * from CarPark.Floor where BuildingID = " + request.getParameter("buil") + " and isEnable = 1";
st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
String optionss = "<option value=\"0\">-- Select --</option>";

 while(rs.next())
 {
	 optionss += "<option value=\""+ rs.getString(1) +"\">" + rs.getString(2) + "</option>";
 } 
 conn.close();
 

out.print(optionss);


%>