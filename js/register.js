var validationOK = true;

////////////////////////////////////////////////////

function regValidation(id, msg){

  var target = document.getElementById(id);
  wrongText = document.createElement("div");
  wrongText.textContent = msg;
  wrongText.setAttribute("class", `text-danger regError`)
  target.appendChild(wrongText);

  return validationOK = false;
}


////////////////////////////////////////////////////

function validateEmail(email) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(String(email).toLowerCase());
}

//////////////////////////////////////////////////////


function validateForm() {
  var name = document.forms["regForm"]["name"];
  var email = document.forms["regForm"]["email"];
  var password1 = document.forms["regForm"]["password1"];
  var password2 = document.forms["regForm"]["password2"];
  var response = grecaptcha.getResponse();

  if (name.value == "") {
    regValidation('divName', 'Wpisz nazwę!',);
    name.focus();
  }

  else if (name.value.length > 25) {
    regValidation('divName', 'Max 25 znaków!');
    name.focus();
  }

  if (email.value == "") {
    regValidation('divEmail', 'Wpisz email!');
    email.focus();
  }
  else if (!validateEmail(email.value)) {
    regValidation('divEmail', 'Wpisz poprawny email!');
    email.focus();
  }


  if (password1.value == "") {
    regValidation('divPassword1', 'Wpisz hasło!');
    password1.focus();
  }

  if (password2.value == "") {
    regValidation('divPassword2', 'Powtórz hasło!');
    password2.focus();
  }

  else if (password1.value != password2.value) {
    regValidation('divPassword2', 'Hasła nie są identyczne!');
    password1.focus();
  }

  if (response.length == 0) {
    regValidation('divRecaptcha', 'Potwierdź, że jesteś człowiekiem!');
  }

  if (validationOK == true) {
    return true;
  } else {
    return false;
  }

}

