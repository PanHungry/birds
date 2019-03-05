<?php

require_once "connect.php";

$conn = new mysqli($host, $db_user, $db_password, $db_name);

$polishSigns ="SET NAMES utf8";
$sqlPL = $conn->query($polishSigns);

    //Check connection
    if ($conn->connect_error){
      echo("Connection failed: ".$conn->connect_error);
    }
    else{

    $dbNameCheck =  "SELECT name,lng,lat FROM locations WHERE idUsers='$id'";
    $result = $conn->query($dbNameCheck);

    while($fetch=$result->fetch_array()) {
        $lngs[] = $fetch;
        }
     }
?>

<script>

var mymap = L.map('mapid').setView([50.022148, 22.315100], 11);
var theMarker = {};

L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoicGFuaHVuZ3J5IiwiYSI6ImNqc3RhenU4YTBvanM0M3A0NnliNGhvZHUifQ.ESsq2KM1-mJaX930KeLVEg', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
        '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
        'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    id: 'mapbox.streets'
}).addTo(mymap);

//  Load markers

var data = <?php echo JSON_encode($lngs); ?>;
console.log(data);

// var popup = L.popup();

for (var i = 0; i < data.length; i++)
{
    var markerLocation = new L.LatLng(data[i].lat, data[i].lng);
    marker = new L.Marker(markerLocation);
    marker.bindPopup("Nazwa lokalizacji: "+data[i].name);
    mymap.addLayer(marker);

    // L.marker([data[i].lat, data[i].lng]).addTo(mymap);
    // marker.bindPopup
    // console.log(data[i].lat, data[i].lng);

    // popup
	// 	.setLatLng([data[i].lat, data[i].lng])
	// 	.setContent("Popup")
	// 	.openOn(mymap);
}

// Add Marker

function onMapClick(e) {

    lat = e.latlng.lat;
    lng = e.latlng.lng;

    document.getElementById("locationLat").value = lat;
    document.getElementById("locationLng").value = lng;

    if (theMarker != undefined) {
        mymap.removeLayer(theMarker);
    };

    theMarker = L.marker([lat,lng]).addTo(mymap);


}

mymap.on('click', onMapClick);



</script>