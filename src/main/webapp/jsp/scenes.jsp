<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Scenes</h1>
	<>
		<tr>
			<th>scene_id</th>
			<th>scene_name</th>
			<th>film_id</th>
		</tr>
		<c:forEach var="scene" items="${scenes}">
			<tr>
				<td>${scene.scene_id}</td>
				<td>${scene.scene_name}</td>
				<td>${scene.film_id}</td>
			</tr>
		</c:forEach>
	</table>
	<p>
		Back <a href="/HTML/NewFile.html">home</a>
	</p>


</body>
</html>