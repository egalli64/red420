<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

    <head>
        <title>FilmAdvisor</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" type="text/css" href="css/page2.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    </head>

<body>

    <nav class="navbar navbar-light" style="background-color: rgb(167, 52, 52);">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                Per te il 20% di sconto se prenoti entro il 30/06
            </a>
        </div>
    </nav>

    <div class="container text-center">
        <h1><em>FilmAdvisor</em></h1>
        <p class="lead text-center">Scegli il contenuto che preferisci e scopri numerosi itinerari creati ad hoc per te!
        </p>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm d-flex justify-content-center text-center">
                    <div class="card" style="width: 18rem;">
                        <img src="./img/ladolcevita.jpg" class="card-img-top" alt="ladolcevita">
                        <div class="card-body">
                            <h5 class="card-title">Film</h5>
                            <p class="card-text">Guarda gli itinerari e renditi protagonista del film che preferisci, il
                                FilmAdvisor sei tu! </p>
                                <select class="form-select form-select-sm" aria-label=".form-select-sm example" style="background-color: rgb(167, 52, 52);">
                                    <option selected>Scoprili tutti...</option>
                                    <option value="Amelie">Amelie</option>
                                    <option value="La Dolce Vita">La Dolce Vita</option>
                                    <option value="Harry Potter">Harry Potter</option>
                                    <option value="Love, Actually">Love, Actually</option>
                                    <option value="Lost in Translation">Lost in Translation</option>
                                  </select>
                        </div>
                    </div>
                </div>
                <div class="col-sm d-flex justify-content-center text-center">
                    <div class="card" style="width: 18rem;">
                        <img src="./img/roma.jpg" class="card-img-top" alt="Aereo">
                        <div class="card-body">
                            <h5 class="card-title">Citt�</h5>
                            <p class="card-text">Vivi un emozionante tour tra i set di grandi film girati nella tua
                                citt�
                                preferita! Che aspetti?</p>
                                <select class="form-select form-select-sm" aria-label=".form-select-sm example" style="background-color: rgb(167, 52, 52);">
                                    <option selected>Scoprile tutte...</option>
                                    <option value="Amelie">Parigi</option>
                                    <option value="La Dolce Vita">Roma</option>
                                    <option value="Harry Potter">Londra</option>
                                    <option value="Love, Actually">Londra</option>
                                    <option value="Lost in Translation">Tokyo</option>
                                  </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>