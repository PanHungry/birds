<?php
if(isset($_POST["locationName"])){

    require_once "connect.php";

    $idUser = $_SESSION["id"];
    $locationName = $_POST["locationName"];
    $locationLat = $_POST["locationLat"];
    $locationLng = $_POST["locationLng"];

    $conn = new mysqli($host, $db_user, $db_password, $db_name);

    $polishSigns ="SET NAMES utf8";
    $sqlPL = $conn->query($polishSigns);

    if ($conn->connect_error){
        echo("Connection failed: ".$conn->connect_error);
    }
    else{
        $dbLocations =  "INSERT INTO locations VALUES (NULL, '$idUser', '$locationName', '$locationLat', '$locationLng');";
        $result = $conn->query($dbLocations);
        $conn->close();
    }
}

?>