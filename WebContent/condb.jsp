<%@ page import = "java.sql.*,java.util.*,java.io.*"%>
<%
Connection conn=null;
/*ResultSet result=null;
Statement stmt=null;
ResultSetMetaData rsmd=null;*/
try {

  Class.forName("com.mysql.jdbc.Driver").newInstance();
  
}
catch(Exception e){
  out.write("Error!!!!!!" + e);
}
try {
  conn=DriverManager.getConnection("jdbc:mysql://54.200.241.181/CarPark", "root","agile");
	/*out.write("Connected!");*/
}
catch(Exception e) {
  System.out.println("Error!!!!!!" + e);
}
%>