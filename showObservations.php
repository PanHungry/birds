<?php
require_once "connect.php";

$id = $_SESSION["id"];

$conn = new mysqli($host, $db_user, $db_password, $db_name);

$polishSigns ="SET NAMES utf8";
$sqlPL = $conn->query($polishSigns);

if ($conn->connect_error){
    echo("Connection failed: ".$conn->connect_error);
}
else{
    $dbLocations =  "SELECT * FROM observations WHERE IDusers=$id ORDER BY date DESC";
    $result = $conn->query($dbLocations);
    
}

echo 
'<table class="table table-light table-striped">
    <thead>
    <tr>
        <th scope="col">Gatunek</th>
        <th scope="col">Lokalizacja</th>
        <th scope="col">Data</th>
    </tr>
    </thead>
        <tbody>';

while($fetch=$result->fetch_array()) {

    $birdID = $fetch['IDbirds'];
    $locationID = $fetch['IDlocations'];

    $resultbird = $conn->query(
        sprintf("SELECT speciesPL FROM birds WHERE ID='%s'",
        mysqli_real_escape_string($conn,$birdID)));
    $speciesPL = $resultbird->fetch_assoc();
    $speciesPL = $speciesPL['speciesPL'];

    $resultbird = $conn->query(
        sprintf("SELECT name FROM locations WHERE ID='%s'",
        mysqli_real_escape_string($conn,$locationID)));
    $locationName = $resultbird->fetch_assoc();
    $locationName = $locationName['name'];

echo 
'<tr>
    <td>'.$speciesPL.'</td>
    <td>'.$locationName.'</td>
    <td>'.$fetch['date'].'</td>
</tr>';
}

echo                           
'   </tbody>
</table>';

$conn->close();
?>