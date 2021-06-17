<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
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
	<c:if test="${param.id==0 or param.id==1}">
		<div class="container text-center">
			<h1>
				<em>Amelie</em>
			</h1>
			<figure>
				<p class="lead text-center">Tante sono le scene del film
					ambientate allâinterno di quel caffÃ¨ parigino in cui AmÃ©lie
					Poulain (l'attrice francese Audrey Tautou) lavora come cameriera.
					Un locale aperto ancora oggi e facilmente individuabile nel
					distretto di Montmartre, a nord di Parigi. Les Deux Moulins prende
					quel nome per via dei due storici mulini di Montmartre che si
					trovano nei paraggi. Il caffÃ¨ Ã¨ posizionato esattamente
					allâincrocio tra Rue Lepic e Rue Cauchois e per arrivarci
					basterÃ  saltare sulla metro e scendere a Blanche. Se deciderete di
					andare oltre la foto d'obbligo davanti al locale, allora potrete
					godere di un posto che Ã¨ caffÃ¨, ristorante e brasserie allo
					stesso tempo. Una volta lasciato il locale, perchÃ© non visitare il
					resto del quartiere e scoprire le altre location del film? Il
					negozio situato in Au Marche dela Butte, la rue des Trois Freres e
					lâappartamento della protagonista che si trova al numero 56 di
					questa rue. Il CafÃ© Deux Moulins Ã¨ aperto tutti i giorni dalle 7
					del mattino fino a tarda notte.</p>
				<p class="lead text-center">
					https://www.youtube.com/watch?v=GPWx9xHUjB8</p>
			</figure>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<img src="./img/scenaamelie.jpeg" alt="" width="500" height="350">
						</figure>

					</div>
					<div class="col text-center">
						<div class="col-sm d-flex justify-content-center text-center">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10494.396241324814!2d2.3248694330059387!3d48.884919368639075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e4fa272f2b7%3A0xbdfb4a918e2e8b46!2sCaf%C3%A9%20des%202%20Moulins!5e0!3m2!1sit!2sit!4v1623851543008!5m2!1sit!2sit"
								width="500" height="350" style="border: 0;" allowfullscreen=""
								loading="lazy"></iframe>
						</div>
					</div>
				</div>
			</div>
	</c:if>
	<c:if test="${param.id==0 or param.id==2}">
		<div class="container text-center">
			<p class="lead text-center"
				style="font-weight: bold; font-family: cursive;">Per maggiori
				informazioni sui pacchetti volo+hotel inviaci una richiesta con il
				form che trovi nella homepage!</p>
		</div>
		</div>

		<div class="container text-center">
			<h1>
				<em>La Dolce Vita</em>
			</h1>
			<figure>
				<p class="lead text-center">âMarcello, come here. Hurry
					up!â. Anita Ekberg con queste parole invita lâattore ciociaro a
					seguirla nel bagno nella magnifica fontana romana. Ma Mastroianni
					era molto freddoloso..La sequenza della Fontana di Trevi del film
					di Federico Fellini Ã¨ una delle piÃ¹ famose della cinematografia
					mondiale di tutti i tempi. Il set de La dolce vita fu allestito
					nella piazza della fontana e durÃ² sette giorni di lavorazione,
					quella sequenza fu girata tra febbraio e marzo con le notti romane
					ancora abbastanza fredde. Mastroianni invece era molto, molto
					freddoloso: sotto i vestiti aveva una muta da sub e nonostante
					questo accorgimento moriva ugualmente dal gelo.</p>
				<p class="lead text-center">
					https://www.youtube.com/watch?v=The8Xi6fKOE</p>
			</figure>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<img src="./img/scenaladolcevita.jpeg" alt="" width="500"
								height="350">
						</figure>

					</div>
					<div class="col text-center">
						<div class="col-sm d-flex justify-content-center text-center">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2969.619604547128!2d12.481089629594514!3d41.90103727205955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f6053278340d5%3A0xf676f1e1cc02bbb6!2sFontana%20di%20Trevi!5e0!3m2!1sit!2sit!4v1623914120468!5m2!1sit!2sit"
								width="500" height="350" style="border: 0;" allowfullscreen=""
								loading="lazy"></iframe>
						</div>
					</div>
				</div>
			</div>

			<div class="container text-center">
				<p class="lead text-center"
					style="font-weight: bold; font-family: cursive;">Per maggiori
					informazioni sui pacchetti volo+hotel inviaci una richiesta con il
					form che trovi nella homepage!</p>
			</div>
		</div>
	</c:if>
	<c:if test="${param.id==0 or param.id==3}">
		<div class="container text-center">
			<h1>
				<em>Love Actually</em>
			</h1>
			<figure>
				<p class="lead text-center">"Delle cose che ricordo di Love
					Actually, la peggiore Ã¨ sicuramente la scena in cui danzo...
					Sospetto che sia la scena piÃ¹ atroce mai realizzata nella storia
					del cinema, per me Ã¨ orribile. Non Ã¨ stato facile per un inglese
					40enne girarla alle 7 del mattino, soprattutto essendo sobrio come
					una pietra". Love Actually Ã¨ una delle commedie romantiche piÃ¹
					apprezzate di sempre, indimenticabile le note di jump (for my love)
					delle The Pointer Sisters.</p>
				<p class="lead text-center">
					https://www.youtube.com/watch?v=zcgxBHBsl-4</p>
			</figure>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<img src="./img/scenaloveactually.jpeg" alt="" width="500"
								height="350">
						</figure>

					</div>
					<div class="col text-center">
						<div class="col-sm d-flex justify-content-center text-center">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2483.53481716077!2d-0.12981338486444552!3d51.503403479634514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487604c56a6cc61d%3A0x2eca1ef309dd9534!2s10%20Downing%20St%2C%20London%20SW1A%202AB%2C%20Regno%20Unito!5e0!3m2!1sit!2sit!4v1623856884240!5m2!1sit!2sit"
								width="500" height="350" style="border: 0;" allowfullscreen=""
								loading="lazy"></iframe>
						</div>
					</div>
				</div>
			</div>
			<div class="container text-center">
				<p class="lead text-center"
					style="font-weight: bold; font-family: cursive;">Per maggiori
					informazioni sui pacchetti volo+hotel inviaci una richiesta con il
					form che trovi nella homepage!</p>
			</div>
		</div>
	</c:if>
	<c:if test="${param.id==0 or param.id==4}">
		<div class="container text-center">
			<h1>
				<em>Harry Potter</em>
			</h1>
			<figure>
				<p class="lead text-center">Â«Non dire stupidaggini. Non
					esistono binari contrassegnati da questo numero.Â» Il Binario 9Â¾
					(in inglese Platform 9Â¾) Ã¨ un binario della stazione di King's
					Cross a Londra. Da questo binario parte l'Espresso per Hogwarts.
					Tutti gli allievi ricevono un biglietto per l'Espresso per
					Hogwarts. Per raggiungere il binario, bisogna passare attraverso la
					barriera tra i binari nove e dieci. Per entrare, Ã¨ importante non
					aver paura di andarci a sbattere contro. Anche un Babbano puÃ²
					entrare se sa con certezza che esiste il binario dietro.</p>
				<p class="lead text-center">
					https://www.youtube.com/watch?v=x4hyAAV1kwQ</p>
			</figure>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<img src="./img/harrypotter.jpg" alt="" width="500" height="350">
						</figure>

					</div>
					<div class="col text-center">
						<div class="col-sm d-flex justify-content-center text-center">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3239.9998997218395!2d139.75153051443192!3d35.701620080189535!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188dbb9458e17b%3A0x850a90e0737c0211!2zS0lOR-KAmVMgQ1JPU1MgUi5ILiDmsLTpgZPmqYvlupc!5e0!3m2!1sit!2sit!4v1623856670055!5m2!1sit!2sit"
								width="500" height="350" style="border: 0;" allowfullscreen=""
								loading="lazy"></iframe>
						</div>
					</div>
				</div>
			</div>
			<div class="container text-center">
				<p class="lead text-center"
					style="font-weight: bold; font-family: cursive;">Per maggiori
					informazioni sui pacchetti volo+hotel inviaci una richiesta con il
					form che trovi nella homepage!</p>
			</div>
		</div>
	</c:if>
	<c:if test="${param.id==0 or param.id==5}">
		<div class="container text-center">
			<h1>
				<em>Lost in Translation</em>
			</h1>
			<figure>
				<p class="lead text-center">Viaggio in cui lo spettatore si
					perde insieme ai protagonisti mentre questi si innamorano l'uno
					dell'altra visitando un mondo nuovo. Tutta lâaffascinante e
					ipnotica âfolliaâ della capitale nipponica viene catturata
					dalla regista che contrappone lâeuforia della metropoli alla
					solennitÃ  di altre location visitate dal personaggio della
					Johansson. Il film si apre sulla finestra di una camera del Park
					Hyatt, in cima alla Shinjuku Tower. Una volta lasciata la torre, ci
					si puÃ² tuffare nella magia della cittÃ  con una corsa in taxi
					verso il quartiere a luci rosse di Kabukicho. Ovviamente non puÃ²
					mancare una visita alla Shibuya Station e a uno degli incroci piÃ¹
					famosi del mondo. Una strada che accoglie ogni giorno milioni di
					pedoni. Alle spalle di questâarea si trova il Karaoke Kan,
					location di una delle sequenze memorabili del film: quella in cui
					Scarlett Johansson canta Brass in Pockets.</p>
				<p class="lead text-center">
					https://www.youtube.com/watch?v=Mlk7n2jBHcE</p>
			</figure>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm d-flex justify-content-center text-center">
						<figure>
							<img src="./img/scenalostintranslation.jpeg" alt="" width="500"
								height="350">
						</figure>

					</div>
					<div class="col text-center">
						<div class="col-sm d-flex justify-content-center text-center">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d51840.02206357744!2d139.67417767865743!3d35.7015836783633!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188d2059b7fd4b%3A0xec61c68fe232efd2!2sShinjuku%2C%20Tokyo%2C%20Giappone!5e0!3m2!1sit!2sit!4v1623856614138!5m2!1sit!2sit"
								width="500" height="350" style="border: 0;" allowfullscreen=""
								loading="lazy"></iframe>
						</div>
					</div>
				</div>
			</div>
			<div class="container text-center">
				<p class="lead text-center"
					style="font-weight: bold; font-family: cursive;">Per maggiori
					informazioni sui pacchetti volo+hotel inviaci una richiesta con il
					form che trovi nella homepage!</p>
			</div>
		</div>

	</c:if>
	<nav class="navbar navbar-light"
		style="background-color: rgb(167, 52, 52);">
		<div class="container-fluid">
			<a class="navbar-brand d-flex align-content-start flex-wrap" a
				href="page2.html" style="color: black;"> Back Home Page </a>

			<footer>
				© Tutti i diritti riservati a <b>RED</b>
			</footer>
		</div>

		</div>
	</nav>
</body>