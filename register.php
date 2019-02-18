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
    <div class="index">
        <div class="col-md-8 col-lg-6 col-xl-5" id="wholeRegCol">

            <div id="register">
                <h1>Załóż konto!</h1>
                <a href="index.html" class="aRegister">Kliknij, by wrócić na stronę główną</a>
            </div>

            <form name="regForm" action="#" method="post" onsubmit="return validateForm()">

                <div class="form-group">
                    <label for="inputNickname">Nazwa użytkownika</label>
                    <input type="text" class="form-control" name="name" id="inputNickname" 
                    placeholder="Wpisz nazwę użytkownika">
                    <div id="divName"></div>
                </div>

                <div class="form-group">
                    <label for="inputEmail">Adres email</label>
                    <input type="email" class="form-control" name="email" id="inputEmail" 
                    placeholder="Wpisz email">
                    <div id="divEmail"></div>
                </div>

                <div class="form-group">
                    <label for="inputPassword1">Hasło</label>
                    <input type="password" class="form-control" name="password1" id="inputPassword1"
                        placeholder="Wpisz hasło">
                    <div id="divPassword1"></div>
                </div>

                <div class="form-group mb-4">
                    <label for="inputPassword2">Powtórz hasło</label>
                    <input type="password" class="form-control" name="password2" id="inputPassword2"
                        placeholder="Wpisz hasło">
                    <div id="divPassword2"></div>
                </div>

                    <div class="g-recaptcha" data-sitekey="6LfDQn4UAAAAALg30Vdd15-oBwf_Ahu05mZTnPdI"></div>
                    <div id="divRecaptcha"></div>

                <button type="submit" class="btn btn-light">Zarejestruj się!</button>
            </form>
        </div>
    </div>

    <script type="text/javascript" src="js/register.js"></script>
</body>

</html>