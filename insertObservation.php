<?php

session_start();

$i = 0;

$idUser = $_SESSION["id"];

echo $idUser;

if(isset($_POST["speciesInput0"])){


    require_once "connect.php";

    $conn = new mysqli($host, $db_user, $db_password, $db_name);

    $polishSigns ="SET NAMES utf8";
    $sqlPL = $conn->query($polishSigns);

    while(isset($_POST["speciesInput".$i])){


    if ($conn->connect_error){
        echo("Connection failed: ".$conn->connect_error);
    }
    else{
        
        $speciesPL = $_POST["speciesInput".$i];
        $result = $conn->query(
            sprintf("SELECT ID FROM birds WHERE speciesPL ='%s'",
            mysqli_real_escape_string($conn,$speciesPL)));
        $speciesID = $result->fetch_assoc();
        $speciesID = $speciesID['ID'];
    
        $location = $_POST["locationInput".$i];
        $result = $conn->query(
            sprintf("SELECT ID FROM locations WHERE name ='%s'",
            mysqli_real_escape_string($conn,$location)));
        $locationID = $result->fetch_assoc();
        $locationID = $locationID['ID'];

        $date = $_POST["dateInput".$i];

        // $dbLocations =  "INSERT INTO locations VALUES (NULL, '$idUser', '$locationName', '$locationLat', '$locationLng');";
                if ($dbObservations = $conn->query(
                    sprintf("INSERT INTO observations VALUES (NULL, '%s', '%s', '%s', '%s')",
                    mysqli_real_escape_string($conn,$idUser),
                    mysqli_real_escape_string($conn,$speciesID),
                    mysqli_real_escape_string($conn,$locationID),
                    mysqli_real_escape_string($conn,$date))))
                    {
                    $result = $conn->query($dbObservations);
                    }
            }
            $i++;
        }
        $conn->close();
    }

    header ('Location: addSpecies.php');
    
?>