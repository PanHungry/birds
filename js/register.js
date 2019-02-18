function validateForm() {
    var name = document.forms["regForm"]["name"];
    var email = document.forms["regForm"]["email"];
    var password1 = document.forms["regForm"]["password1"];
    var password2 = document.forms["regForm"]["password2"];
    var response = grecaptcha.getResponse();

    if (name.value == "") {
      alert("Wpisz nazwę użytkownika!");
      name.focus();
      return false;
    }

    if (email.value == "") {
      alert("Wpisz email!");
      email.focus();
      return false;
    }

    if (password1.value == "") {
      alert("Wpisz hasło!");
      password1.focus();
      return false;
    }

    if (password2.value == "") {
      alert("Powtórz hasło!");
      password2.focus();
      return false;
    }

    if (password1.value != password2.value) {
      alert("Hasła nie są identyczne!");
      password2.focus();
      return false;
    }

    if(response.length == 0) {
      alert("Potwierdź, że nie jesteś robotem!");
      return false;
    }

    return true;

  }