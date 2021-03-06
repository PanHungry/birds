<!DOCTYPE html>
<html lang="pl">

<!-- PHP -->

<?php

session_start();

$name = $_SESSION["name"];
$id = $_SESSION["id"];

?>

<!-- HTML -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/custom.css">

    <!-- Leaflet -->

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.4.0/dist/leaflet.css"
   integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA=="
   crossorigin=""/>

   <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"
   integrity="sha512-QVftwZFqvtRNi0ZyCtsznlKSWOStnDORoefr1enyq5mVL4tmKB3S/EnC3rRJcxCPavG10IcrVGSmPh6Qw5lwrg=="
   crossorigin=""></script>

   <!-- Geocoder -->

   <link rel="stylesheet" href="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.css" />
    <script src="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.js"></script>


    <title>Birds</title>
</head>

<body id="mainPage">
    <div class="index" id="mainbg">
        <div id="main">

            <!-- Heading -->
            <h3>Jak tam w terenie, <?php echo $name."? ID: ".$id; ?></h3>

            <!-- Navbar -->
            <nav class="navbar navbar-light bg-light navbar-expand-md justify-content-center mt-5 rounded mb-5">
                <a href="/" class="navbar-brand d-flex w-20 mr-auto">MENU</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
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
                            <a class="nav-link" href="locations.php">Moje lokalizacje</a>
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

            <!-- Locations -->

            <!-- Form -->

            <div id="addLocation">

                <form autocomplete="off" class="form-group justify-content-center" id="addLocationForm" method="POST" action="locations.php">
                    <div class="row mt-3">
                        <div class="form-group col-md">
                            <label for="locationName">Nazwa lokalizacji:</label>
                            <input type="text" class="form-control" id="locationName" name="locationName"
                                placeholder="Wpisz nazwę lokalizacji">
                        </div>
                        <div class="form-group col-md">
                            <label for="locationLat">Szerokość:</label>
                            <input type="text" class="form-control" id="locationLat" name="locationLat"
                                placeholder="Zaznacz punkt na mapie">
                        </div>
                        <div class="form-group col-md">
                            <label for="locationLng">Długość:</label>
                            <input type="text" class="form-control" id="locationLng" name="locationLng"
                                placeholder="Zaznacz punkt na mapie">
                        </div>
                    </div>
                </form>
                <button type="submit" class="btn btn-light mt-2" form="addLocationForm">Dodaj</button>
            </div>

            <!-- Map -->

            <div id="mapid" class="mt-5"></div>

        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <!-- <script type="text/javascript" src="js/addLocation.js"></script> -->
    <?php include_once "loadMap.php";?>

</body>
</html>