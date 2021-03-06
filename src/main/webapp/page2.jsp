<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
	<link rel="shortcut icon" href="favicon.ico"/>
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
							<h5 class="card-title">Film</h5>
							<p class="card-text">Guarda gli itinerari e renditi
								protagonista del film che preferisci, il FilmAdvisor sei tu!</p>
							<form action="film" method="get">
								<select class="form-select form-select-sm"
									aria-label=".form-select-sm example"
									style="background-color: rgb(167, 52, 52);" name="id">
									<option selected value="0">Scoprili tutti...</option>
									<option value="1">Amelie</option>
									<option value="2">La Dolce Vita</option>
									<option value="3">Harry Potter</option>
									<option value="4">Love, Actually</option>
									<option value="5">Lost in Translation</option>
								</select> <br> <input type="submit" class="btn-check" id="btn-check"
									autocomplete="off"> <label class="btn btn-primary"
									for="btn-check" style="background-color: rgb(167, 52, 52);">Vai!</label>
							</form>
						</div>
					</div>
				</div>
				<div class="col-sm d-flex justify-content-center text-center">
					<div class="card" style="width: 18rem;">
						<img src="./img/roma.jpg" class="card-img-top" alt="Aereo">
						<div class="card-body">
							<h5 class="card-title">Citt??</h5>
							<p class="card-text">Vivi un emozionante tour tra i set di
								grandi film girati nella tua citt?? preferita! Che aspetti?</p>
							<form action="page4.jsp" method="get">
								<select name="cityId" class="form-select form-select-sm"
									aria-label=".form-select-sm example"
									style="background-color: rgb(167, 52, 52);">
									<option value="0" selected>Scoprile tutte...</option>
									<option value="1">Parigi</option>
									<option value="2">Roma</option>
									<option value="3">Londra</option>
									<option value="4">Tokyo</option>
								</select> <br> <input type="submit" class="btn-check" id="btn-city"
									autocomplete="off"> <label class="btn btn-primary"
									for="btn-city" style="background-color: rgb(167, 52, 52);">Vai!</label>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="fixed-bottom">
	<nav class="navbar navbar-light"
		style="background-color: rgb(167, 52, 52);">
		<div class="container-fluid">
		<a class="navbar-brand d-flex align-content-start flex-wrap" a 
			href="index.jsp" style="color: black;"> Back to Login </a>
			<a class="navbar-brand d-flex align-content-start flex-wrap"> </a>
			<footer>
				?? Tutti i diritti riservati a <b>RED</b>
			</footer>
		</div>
	</nav>
	</div>
</body>

</html>