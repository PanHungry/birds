<!DOCTYPE html>
<html lang="pl">

<!-- PHP -->

<?php

session_start();

// require_once "login.php";

?>

<!-- HTML -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/custom.css">
    <!-- <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"> -->
    <title>Birds</title>
</head>

<body id="mainPage">
    <div class="index" id="mainbg">
        <div id="main">


            <!-- Heading -->
            <h3>Jak tam w terenie, <?php echo $_SESSION["name"]."? ID: ".$_SESSION["id"]; ?></h1>

                <!-- Navbar -->
                <nav class="navbar navbar-light bg-light navbar-expand-md justify-content-center mt-5 rounded">
                    <a href="/" class="navbar-brand d-flex w-20 mr-auto">MENU</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#collapsingNavbar3">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
                        <ul class="navbar-nav w-100 justify-content-center">
                            <li class="nav-item active">
                                <a class="nav-link" href="main.php">Strona główna</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="addSpecies.php">Moja lista</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Moje lokalizacje</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Ranking</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav ml-auto w-20 justify-content-end">
                            <li class="nav-item">
                                <a class="nav-link text-danger" href="index.php">Wyloguj</a>
                            </li>
                        </ul>
                    </div>
                </nav> 

                <div id="addForms">
                    <button type="submit" class="btn btn-success mt-5" onclick="addFields()">Dodaj więcej gatunków</button>

                    <form autocomplete="off" class="form-group justify-content-center" id="addForm" action="addSpecies.php" method="POST">
                        <div class="row mt-3">
                            <div class="form-group col-md">
                                <label for="speciesInput0">Gatunek:</label>
                                <input type="text" class="form-control autoCompleteInput" id="speciesInput0" name="speciesInput0" placeholder="Wpisz gatunek" >
                                <div id="responsespeciesInput0"></div>
                            </div>
                            <div class="form-group col-md">
                                <label for="locationInput0">Lokalizacja:</label>
                                <input type="text" class="form-control " id="locationInput0" name="locationInput0">
                            </div>
                            <div class="form-group col-md">
                                <label for="dateInput0">Data:</label>
                                <input type="date" class="form-control " id="dateInput0" name="dateInput0">
                            </div>
                        </div>
                    </form>
                    <button type="submit" class="btn btn-light mt-2" form="addForm">Dodaj</button>
                </div>
        </div>
    </div>

    <script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script> -->
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/autocomplete.js"></script>



</body>

</html>