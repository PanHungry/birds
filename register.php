<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/custom.css">
    <title>Birds | Register</title>

    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>

<body>
<!-- PHP -->

    <?php

 require_once "checkReg.php";

    ?>

<!-- HTML -->

    <div class="index">
        <div class="col-md-8 col-lg-6 col-xl-5" id="wholeRegCol">

            <div id="register">
                <h1>Załóż konto!</h1>
                <a href="index.php" class="aRegister">Kliknij, by wrócić na stronę główną</a>
            </div>

            <form method="post" name="regForm" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" onsubmit="return validateForm()">

                <div class="form-group">
                    <label for="inputNickname">Nazwa użytkownika</label>
                    <input type="text" name="name" class="form-control" id="inputNickname" 
                    placeholder="Wpisz nazwę użytkownika"
                    value= "<?php
                    if (isset($_SESSION['fr_name'])) {
                        echo $_SESSION['fr_name'];
                        unset($_SESSION['fr_name']);
                    }
                    ?>">
                    <div id="divName"> <?php echo '<div class="text-danger regError">'.$nameErr.'</div>';?></div>
                </div>

                <div class="form-group">
                    <label for="inputEmail">Adres email</label>
                    <input type="email" class="form-control" name="email" id="inputEmail" 
                    placeholder="Wpisz email"
                    value= "<?php
                    if (isset($_SESSION['fr_email'])) {
                        echo $_SESSION['fr_email'];
                        unset($_SESSION['fr_email']);
                    }
                    ?>">
                    <div id="divEmail"><?php echo '<div class="text-danger regError">'.$emailErr.'</div>';?></div>
                </div>

                <div class="form-group">
                    <label for="inputPassword1">Hasło</label>
                    <input type="password" class="form-control" name="password1" id="inputPassword1"
                        placeholder="Wpisz hasło">
                    <div id="divPassword1"><?php echo '<div class="text-danger regError">'.$password1Err.'</div>';?></div>
                </div>

                <div class="form-group mb-4">
                    <label for="inputPassword2">Powtórz hasło</label>
                    <input type="password" class="form-control" name="password2" id="inputPassword2"
                        placeholder="Wpisz hasło">
                    <div id="divPassword2"><?php echo '<div class="text-danger regError">'.$password2Err.'</div>';?></div>
                </div>

                    <div class="g-recaptcha" data-sitekey="6LfDQn4UAAAAALg30Vdd15-oBwf_Ahu05mZTnPdI"></div>
                    <div id="divRecaptcha"><?php echo '<div class="text-danger regError">'.$recaptchaErr.'</div>';?></div>

                <button type="submit" class="btn btn-light">Zarejestruj się!</button>
            </form>
        </div>
    </div>

    <script type="text/javascript" src="js/register.js"></script>
</body>

</html>