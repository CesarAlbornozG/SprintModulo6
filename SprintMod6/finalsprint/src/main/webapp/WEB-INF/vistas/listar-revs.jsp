<%@page import="tech.awakelab.jpapreventionsprint.models.Revision"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Listar Revisiones</title>
<link rel="stylesheet" href="<c:url value="/res/css/styles.css" />">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- /Font Awesome -->
</head>
<body>
	<!-- Navbar -->
	<jsp:include page="navbar.jsp" />
	<!-- End Navbar -->

	<div class="container mt-5">
		<div class="row ">
			<h1 class="text-center">Listado de Revisiones</h1>


			<!-- Tabla -->
			<table class="table table-striped table-hover">
				<thead class="table-dark">
					<tr>
						<th scope="col">Nombre de Visita</th>
						<th scope="col">Detalle</th>
						<th scope="col">Estado</th>
					</tr>
				</thead>

				<tbody class="table-group-divider">
					<!-- row = fila -->
					<c:forEach var="rev" items="${revisiones}">
						<tr>
							<td><c:out value="${rev.getNombreVisita()}"></c:out></td>
							<td><c:out value="${rev.getDetalle()}"></c:out></td>
							<td><c:out value="${rev.getEstado()}"></c:out></td>
							
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>

		<div class="row">
			<div class="col d-flex justify-content-around">
				<a class="btn btn-success" href="${pageContext.request.contextPath}/nueva-revision"><i
					class="mx-1 fa-solid fa-plus"></i>Ingresar Revision</a>
			</div>
		</div>

	</div>

	<!-- Footer -->
	<jsp:include page="footer.jsp" />
	<!-- End Footer -->

	<!-- JavaScript de bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
		integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
		crossorigin="anonymous"></script>
	<!-- Fin JavaScript de bootstrap -->

	<script src="js/listar-por-usuario.js"></script>
</body>
</html>