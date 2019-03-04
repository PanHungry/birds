<?php

session_start();

$validationLogOK = true;

$name = $password = "";

$nameLogErr = $passwordLogErr = "";

require_once "connect.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $conn = new mysqli($host, $db_user, $db_password, $db_name);

    //Check connection
    if ($conn->connect_error){
      echo("Connection failed: ".$conn->connect_error);
    } else{
        // echo "Połączenie udane ";
        $login = $_POST["name"];
        $_SESSION["name"] = $_POST["name"];
        $password = $_POST["password"];

        $login = htmlentities($login, ENT_QUOTES, "UTF-8");

        if ($result = $conn->query(
          sprintf("SELECT * FROM users WHERE nickname='%s'",
          mysqli_real_escape_string($conn,$login))))
          {
            // echo "Query ok";
            $howManyUsers = $result->num_rows;
              if($howManyUsers>0)
              {
              $userData=$result->fetch_assoc();

                if(password_verify($password, $userData['password'])){
                  // echo " password ok";
                  $_SESSION["id"] = $userData['ID'];
                } else{
                  $validationLogOK = false;
                  $passwordLogErr = "Błędne hasło!";
                }

             } else {
              $validationLogOK = false;
              $nameLogErr = "Nie ma takiego użytkownika w bazie!";
             }

           }
      $conn->close();
      $result->free_result();

        if($validationLogOK){
          header('Location: main.php');
        }
        $conn->close();
      }
  }


?>