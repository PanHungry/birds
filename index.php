<!DOCTYPE html>
<html lang="pl">

<!-- PHP -->

<?php

require_once "login.php";

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

<body>
    <div class="index" id="indexbg">
        <div class="col-md-8 col-lg-6 col-xl-5" id="logForm">
            <div id="welcome">
                <h1>Witaj w świecie ptaków!</h1>
                <a href="register.php" class="aRegister">Zarejestruj się, by wkroczyć w latający świat!</a>
            </div>
            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nazwa użytkownika</label>
                    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        placeholder="Wpisz nazwę użytkownika">
                    <div id="divNameError"> <?php echo '<div class="text-danger regError">'.$nameLogErr.'</div>';?></div>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Hasło</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Wpisz hasło">
                    <div id="divPasswordError"> <?php echo '<div class="text-danger regError">'.$passwordLogErr.'</div>';?></div>
                </div>
                <button type="submit" class="btn btn-light regbtn">Zaloguj się</button>
            </form>
        </div>
    </div>
</body>

</html>