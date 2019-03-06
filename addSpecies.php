<!DOCTYPE html>
<html lang="pl">

<!-- PHP -->
<?php

session_start();

?>

<!-- HTML -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/custom.css">
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

<?php

include_once "insertObservation.php"

?>


        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/main.js"></script>
    
</body>

</html>