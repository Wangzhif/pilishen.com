
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>

<%@page import="cn.ty.library.Library"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

		

</head>
<body>
	<div align="center">欢迎购买</div>
	<%
		Library lib1 = new Library(1001, "百年孤独", 40.5);
		Library lib2 = new Library(1002, "老人与海", 20.5);
		Library lib3 = new Library(1003, "一千零一夜", 100);
		Library lib4 = new Library(1004, "儒林外史", 18);
		Library lib5 = new Library(1005, "浮生六记", 80);
		HashMap<String, Library> library = new HashMap<String, Library>();
		library.put("1001", lib1);
		library.put("1002", lib2);
		library.put("1003", lib3);
		library.put("1004", lib4);
		library.put("1005", lib5);
		application.setAttribute("library", library);
	%>
	<table border="2px" align="center" width="500px">
		<tr>
			<td>编号</td>
			<td>书名</td>
			<td>单价</td>
			<td>啦啦啦</td>
		</tr>
		<%
				Set<String> key =  library.keySet();
			
			for (String set : key) {
			
			Library l=(Library)library.get(set);
		%>
		<tr>
			<td><%=l.getBid()%></td>
			<td><%=l.getTitle()%></td>
			<td><%=l.getPrice()%></td>
			<td><a href="exe.jsp?Bid=<%=l.getBid() %>">购买</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>