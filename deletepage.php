<?php

if (isset($_POST['deleteid'])){

    require_once "connect.php";

    $id = $_POST['deleteid'];

    $conn = new mysqli($host, $db_user, $db_password, $db_name);

    $polishSigns ="SET NAMES utf8";
    $sqlPL = $conn->query($polishSigns);

    if ($conn->connect_error){
        echo("Connection failed: ".$conn->connect_error);
    }
    else{
        $dbLocations =  "DELETE FROM locations WHERE ID='$id'";
        $result = $conn->query($dbLocations);
    }
}
?>