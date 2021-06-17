<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<head>
<title>FilmAdvisor</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" type="text/css" href="css/page2.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
</head>

<body>

	<nav class="navbar navbar-light"
		style="background-color: rgb(167, 52, 52);">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> Per te il 20% di sconto se
				prenoti entro il 30/06 </a>
		</div>
	</nav>

	<div class="container text-center">
		<h1>
			<em>FilmAdvisor</em>
		</h1>
		<p class="lead text-center">Scegli il contenuto che preferisci e
			scopri numerosi itinerari creati ad hoc per te!</p>

		<div class="container-fluid">
			<div class="row">
				<div class="col-sm d-flex justify-content-center text-center">
					<div class="card" style="width: 18rem;">
						<img src="./img/ladolcevita.jpg" class="card-img-top"
							alt="ladolcevita">
						<div class="card-body">
							<h5 class="card-title">Film</h5><!-- Da qui ottengo le scene dei film in particolare-->
							<p class="card-text">Guarda gli itinerari e renditi
								protagonista del film che preferisci, il FilmAdvisor sei tu!</p>
							<form action="scenesByFilm" method="get">
								<select class="form-select form-select-sm"
									aria-label=".form-select-sm example"
									style="background-color: rgb(167, 52, 52);" name="id">
									<option selected value="0">Scoprili tutti...</option>
									<option value="1">Amelie</option>
									<option value="2">La Dolce Vita</option>
									<option value="3">Harry Potter</option>
									<option value="4">Love, Actually</option>
									<option value="5">Lost in Translation</option>
								</select> <input type="submit" class="btn-check" id="btn-check"
									autocomplete="off"> <label class="btn btn-primary"
									for="btn-check">Vai!</label>
							</form>
						</div>
					</div>
				</div>
				<div class="col-sm d-flex justify-content-center text-center">
					<div class="card" style="width: 18rem;">
						<img src="./img/roma.jpg" class="card-img-top" alt="Aereo">
						<div class="card-body">
							<h5 class="card-title">Città</h5> <!-- Da qui ottengo i trailer e i film in generale-->
							<p class="card-text">Vivi un emozionante tour tra i set di
								grandi film girati nella tua città preferita! Che aspetti?</p>
							<form action="page4.jsp" method="get">
								<select name="cityId" class="form-select form-select-sm"
									aria-label=".form-select-sm example"
									style="background-color: rgb(167, 52, 52);">
									<option value="1" selected>Scoprile tutte...</option>
									<option value="1">Parigi</option>
									<option value="2">Roma</option>
									<option value="3">Londra</option>
									<option value="4">Londra</option>
									<option value="5">Tokyo</option>
								</select>
                                <input type="submit" class="btn-check" id="btn-city"
									autocomplete="off">
                                    <label class="btn btn-primary"
									for="btn-city">Vai!</label>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>