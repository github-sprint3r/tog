<%@ page import = "java.sql.*,java.util.*,java.io.*"%>
<%
Connection conn=null;
ResultSet result=null;
Statement stmt=null;
ResultSetMetaData rsmd=null;
try {
  Class c = Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e){
  out.write("Error!!!!!!" + e);
}
try {
  conn=DriverManager.getConnection("jdbc:mysql://54.200.241.181", "root","agile");
	out.write("Connected!" + "<br/>");
	
	stmt = conn.createStatement();
	String sql = "SELECT * FROM CarPark.Building where isEnable = 1";
	result = stmt.executeQuery(sql);
	while((result!=null) && (result.next()))
		{
		out.print(result.getString(1)+" "+result.getString(2)+" "+result.getString(3) + "<br/>");
		}
	conn.close();
}
catch(Exception e) {
  System.out.println("Error!!!!!!" + e);
}
%>