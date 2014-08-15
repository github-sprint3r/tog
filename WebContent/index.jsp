<%@page import="javax.swing.text.html.Option"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="condb.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
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

 <h1> TOG car park <small> (Thaiopticalgroup) </small></h1> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>


<h3> Building :


<select class="combobox">
  <option></option>
  <option value="PA">Pennsylvania</option>
  <option value="CT">Connecticut</option>
  <option value="NY">New York</option>
  <option value="MD">Maryland</option>
  <option value="VA">Virginia</option>
</select>

<script type="text/javascript">
  $(document).ready(function(){
    $('.combobox').combobox();
  });
</script>




 Floor :


<select class="combobox">
  <option></option>
  <option value="PA">Pennsylvania</option>
  <option value="CT">Connecticut</option>
  <option value="NY">New York</option>
  <option value="MD">Maryland</option>
  <option value="VA">Virginia</option>
</select>

<script type="text/javascript">
  $(document).ready(function(){
    $('.combobox').combobox();
  });
</script>


<button type="button" class="btn btn-default" width="30" > Search </button>


</h3> 

<TABLE width = "80%"  >
	<TD bgcolor = "FFFFFF" width="50" height="50" >  </TD>
</TABLE>

 <TABLE width = "80%" border = "4" bordercolor="blue"  >
      <TR bgcolor = "FFCCFF">                              
		<TD  width="20" height="100" >  </TD>
		<TD  width="20" height="100" >  </TD>
		<TD width="20" height="50" >  </TD>
		<TD  width="20" height="50" >  </TD>
		<TD  width="20" height="50" >  </TD>
		<TD  width="20" height="50" >  </TD>
		<TD  width="20" height="50" >  </TD>
		<TD  width="20" height="50" >  </TD>
		<TD  width="20" height="50" >  </TD>
		<TD  width="20" height="50" >  </TD>

    </TR>                  
</TABLE>


<TABLE width = "80%"  >
	<TD bgcolor = "FFFFFF" width="50" height="100" >  </TD>
</TABLE>



	
 <TABLE width = "80%" border = "4" bordercolor="blue" height="100"  >

	<TR bgcolor = "FFCCFF">     

		<TD width="20" >  </TD>
		<TD width="20"  >  </TD>
		<TD  width="20"  >  </TD>
		<TD  width="20" >  </TD>
		<TD width="20"  >  </TD>
		<TD  width="20"  >  </TD>
		<TD  width="20"  >  </TD>
		<TD  width="20" >  </TD>
		<TD width="20" >  </TD>
		<TD  width="20"  >  </TD>


	</TR>  
	
                      
</TABLE>




</body>
</html>