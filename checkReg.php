<?php

session_start();

$validationOK = true;

$name = $email = $password1 = $password2 = "";

$nameErr = $emailErr = $password1Err = $password2Err = $passwordMatchErr = "";

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

  $_SESSION['fr_name'] = $_POST["name"];
  $_SESSION['fr_email'] = $_POST["email"];
  
    if (empty($_POST["name"])) {
      $nameErr = "Name is required";
      $validationOK = false;
    } else {
      $name = test_input($_POST["name"]);
      // check if name only contains letters and whitespace
      if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
        $nameErr = "Only letters and white space allowed"; 
        $validationOK = false;
      }
    }

    if (empty($_POST["email"])) {
      $emailErr = "Email is required";
      $validationOK = false;
    } else {
      $email = test_input($_POST["email"]);
      // check if e-mail address is well-formed
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
          $emailErr = "Invalid email format"; 
          $validationOK = false;
        }
    }

    if(empty($_POST["password1"])) {
      $password1Err = "Wpisz hasło!";
      $validationOK = false;
    } else if ((strlen($_POST["password1"]))<6) {
      $password1Err = "Hasło musi zawierać conajmniej 6 znaków!";
      $validationOK = false;
    }

    if(empty($_POST["password2"])) {
      $password2Err = "Powtórz hasło!";
      $validationOK = false;
    } else if ($_POST["password1"] != $_POST["password2"]) {
      $password2Err = "Hasła nie są identyczne!";
      $validationOK = false;
    }

    $password_hash = password_hash($_POST["password1"], PASSWORD_DEFAULT);

  if($validationOK == true){

  // DATABASE VALIDATION

    require_once "connect.php";

  //Create connection to database
    $conn = new mysqli($host, $db_user, $db_password, $db_name);

    //Check connection
    if ($conn->connect_error){
      echo("Connection failed: ".$conn->connect_error);
    }
    else{
      $name = $_POST["name"];
      $email = $_POST["email"];

      // Name check //

      $dbNameCheck =  "SELECT ID FROM users WHERE nickname='$name'";
      $result = $conn->query($dbNameCheck);

      if($result->num_rows>0) {
        $validationOK = false;
        $nameErr = "Taka nazwa użytkownika już istnieje!";
      }

      // Email check //

      $dbEmailCheck = "SELECT ID FROM users WHERE email='$email'";
      $result = $conn->query($dbEmailCheck);

      if($result->num_rows>0) {
        $validationOK = false;
        $emailErr = "Taki email jest już używany!";
      }

        if($validationOK == true){
          $dbAddUser = "INSERT INTO users VALUES (NULL, '$name', '$email', '$password_hash')";

            if($conn->query($dbAddUser) == true) {
              header('Location: welcome.html');
              } else {
                  echo "Error: " . $sql . "<br>" . $conn->error;
              }
        }

    $conn->close();
    }
  }
}
?>
