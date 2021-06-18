<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>


<head>
<title>FilmAdvisor</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" type="text/css" href="css/page3.css">
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
			<a class="navbar-brand" href="#"> FilmAdvisor </a>
		</div>
	</nav>
	<br>
	<c:if test="${param.cityId==0 or param.cityId==1}">
		<div class="container text-center">
			<h1>
				<em><b>Amelie (2001, Jeunet)</b></em>
			</h1>
			<br> <br>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<iframe width="500em" height="250em" src="https://www.youtube.com/embed/v_Xp88Fjxj8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

						</figure>

					</div>
					<div class="col text-center">
						<figure>
							<p class="lead text-center-justify">A Parigi, al n. 15 di Rue
								Lepic, c'è il caffè Des 2 moulins. È proprio all'angolo: un
								neon non opprimente, una vetrina illuminata con discrezione,
								tavolini esterni secondo il gusto francese. Il tutto un po'
								fuori dal tempo. Potrebbero essere i nostri giorni, potrebbero
								non esserlo. È in questo luogo che lavora Amélie Poulain, la
								protagonista de Il favoloso mondo di Amélie, diretto da
								Jean-Pierre Jeunet, che è diventato nel tempo un vero e proprio
								cult.</p>

						</figure>
					</div>
				</div>
			</div>

		</div>
	</c:if>
	<c:if test="${param.cityId==0 or param.cityId==2}">
		<div class="container text-center">
			<br> <br>
			<h1>
				<em><b>La Dolce Vita (1960, Fellini)</b></em>
			</h1>
			<br> <br>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<iframe class="embed-responsive-item"
								src="https://www.youtube.com/embed/ARlSVnAiX00" allowfullscreen
								alt="La dolce Vita" width=500em height=270em></iframe>
						</figure>

					</div>
					<br>
					<div class="col text-center">
						<figure>
						<br>
							<p class="lead text-center-justify">Marcello, scrittore
								mancato che lavora per un giornale scandalistico con la scorta
								di un paparazzo, fa incontri ed esperienze nella Roma mondana,
								cinematografara e intellettuale di via Veneto e dintorni.
								Viaggio attraverso il disgusto, cinegiornale e affresco di una
								Roma raccontata come una Babilonia precristiana, affascinante e
								turpe. Una materia da giornale in rotocalco trasfigurata in
								epica. </p>

						</figure>
					</div>
				</div>
			</div>
	</c:if>
	<c:if test="${param.cityId==0 or param.cityId==3}">
		<div class="container text-center">
			<br> <br>
			<h1>
				<em><b>Harry Potter (2001, Columbus)</b></em>
			</h1>
			<br> <br>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<iframe width="500em" height="250em" src="https://www.youtube.com/embed/rQLfqdLZ49A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</figure>

					</div>
					<div class="col text-center">
						<figure>
							<p class="lead text-center-justify">«Il signore e la signora
								Dursley, di Privet Drive numero 4, erano orgogliosi di poter
								affermare che erano perfettamente normali, e grazie tante». Così
								comincia un libro che è diventato un successo editoriale senza
								precedenti e che ora approda sul grande schermo. Stiamo parlando
								di Harry Potter e la pietra filosofale la trasposizione del
								primo dei sette romanzi che compongono la saga letteraria
								scritta da J. K. Rowling. </p>

						</figure>
					</div>
				</div>
			</div>

		</div>
	</c:if>
	<c:if test="${param.cityId==0 or param.cityId==3}">
		<div class="container text-center">
			<br> <br>
			<h1>
				<em><b>Love Actually (2003, Curtis)</b></em>
			</h1>
			<br> <br>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<iframe src="https://www.youtube.com/embed/H9Z3_ifFheQ?start=5"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen width="500em" height="270em"></iframe>
						</figure>

					</div>
					<div class="col text-center">
						<figure>
						

							<p class="lead text-center-justify">Pochi giorni a Natale in
								una Londra dove l'amore è dappertutto. Dieci storie di ogni
								risma si intrecciano a formarne una sola: Hugh Grant è il nuovo
								Premier appena insediatosi e si innamora di una ragazza del suo
								staff; sua sorella è convinta di essere
								cornificata dal marito che in effetti è molto
								attratto da una collega, che già aveva fatto perdere la testa ad
								uno scrittore, il quale fugge in Francia per
								dimenticarla e lì... Si avvicina il Natale, verso cui convergono
								tutte queste storie.</p>

						</figure>
					</div>
				</div>
			</div>

		</div>
	</c:if>
	<c:if test="${param.cityId==0 or param.cityId==4}">
		<div class="container text-center">
			<br> <br>
			<h1>
				<em><b>Lost in Translation (2003, Coppola)</b></em>
			</h1>
			<br> <br>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<iframe src="https://www.youtube.com/embed/W6iVPCRflQM?start=3"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen width="500em" height="270em"></iframe>
						</figure>

					</div>
					<div class="col text-center">
						<figure>
							<br>

							<p class="lead text-center-justify">I destini di due
								americani, un attore ormai in declino e la giovane moglie di un
								fotografo, si incrociano a Tokyo, dove sono entrambi per lavoro.
								Finiranno col passare insieme la settimana più bizzarra della
								loro vita che li aiuterà a ritrovare se stessi. Bill Murray e
								Scarlett Johansson sono i protagonisti di questo capolavoro di
								Sofia Coppola.</p>

						</figure>
					</div>
				</div>
			</div>

		</div>
	
	</c:if>
	<nav class="navbar navbar-light"
		style="background-color: rgb(167, 52, 52);">
		<div class="container-fluid">
			<a class="navbar-brand d-flex align-content-start flex-wrap" a
				href="page2.jsp" style="color: black;"> Back Home Page </a>

			<footer>
				© Tutti i diritti riservati a <b>RED</b>
			</footer>
		</div>

	</nav>


</body>