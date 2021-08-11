<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="pe.edu.tecsup.app.models.Cliente"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="ClientesBuscarServlet">
		Nombres: <input type="text" name="txtNombres"/>
		<input type="submit" value="Buscar"/>
	</form>
	
	<%
		ArrayList<Cliente> clientes 
		        = (ArrayList<Cliente>) request.getAttribute("clientes_001");
		
		if (clientes != null) {
			out.println("<ul>");
			for (Cliente x : clientes) {
				out.println("<li>" + x.getNombreCompleto() + "</li>");
			}
			out.println("</ul>");
		} 	
	%>

</body>
</html>