var validationOK = true;

/////////////////////////////////////////////////// FUNCTIONS ////////////////////////////////////////

function regValidation(id, msg) {

  var target = document.getElementById(id);
  wrongText = document.createElement("div");
  wrongText.textContent = msg;
  wrongText.setAttribute("class", `text-danger regError`)
  if (!target.firstChild) {
    target.appendChild(wrongText);
  }
  else {
    target.removeChild(target.firstChild);
    target.appendChild(wrongText);
  }

  return validationOK = false;
}


////////////////////////////////////////////////////

function deleteChildren(id) {
  var el = document.getElementById(id);
  while (el.firstChild) el.removeChild(el.firstChild);
  return validationOK = true;
}


///////////////////////////////////////////////////

function validateEmail(email) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(String(email).toLowerCase());
}

//////////////////////////////////////////////////////

function validateName(name) {
  var nameRegex = /^[a-zA-Z0-9]+$/;
  var validName = name.match(nameRegex);

  return validName;
}


/////////////////////////////////////////////////////


function validateForm() {
  var name = document.forms["regForm"]["name"];
  var email = document.forms["regForm"]["email"];
  var password1 = document.forms["regForm"]["password1"];
  var password2 = document.forms["regForm"]["password2"];
  var response = grecaptcha.getResponse();

  //////////////////////////////////////////////// VALIDATION ///////////////////////////////////

  ////////// NAME VALIDATION ///////////////

  if (name.value == "") {
    regValidation('divName', 'Wpisz nazwę!');
    name.focus();
  }
  else if (name.value.length > 25) {
    regValidation('divName', 'Max 25 znaków!');
    name.focus();
  }
  else if (!validateName(name.value)) {
    regValidation('divName', 'Używaj tylko znaków alfanumerycznych!');
    email.focus();
  }

  else {
    deleteChildren('divName');
  }

  ////////// EMAIL VALIDATION ///////////////

  if (email.value == "") {
    regValidation('divEmail', 'Wpisz email!');
    email.focus();
  }
  else if (!validateEmail(email.value)) {
    regValidation('divEmail', 'Wpisz poprawny email!');
    email.focus();
  }
  else {
    deleteChildren('divEmail');
  }

  ////////// PASSWORD1 VALIDATION ///////////////

  if (password1.value == "") {
    regValidation('divPassword1', 'Wpisz hasło!');
    password1.focus();
  }
  else if (password1.value.length < 6) {
    regValidation('divPassword1', 'Hasło musi zawierać conajmniej 6 znaków!');
    password1.focus();
  }
  else {
    deleteChildren('divPassword1');
  }

  ////////// PASSWORD2 VALIDATION ///////////////

  if (password2.value == "") {
    regValidation('divPassword2', 'Powtórz hasło!');
    password2.focus();
  }
  else if (password1.value != password2.value) {
    regValidation('divPassword2', 'Hasła nie są identyczne!');
    password1.focus();
  }
  else {
    deleteChildren('divPassword2');
  }

  ////////// RECAPTCHA VALIDATION ///////////////

  if (response.length == 0) {
    regValidation('divRecaptcha', 'Potwierdź, że jesteś człowiekiem!');
  }
  else {
    deleteChildren('divRecaptcha');
  }

  ///////// validationOK? ///////////////

  if (validationOK == true) {
    return true;
  } else {
    return false;
  }

}