<?php

require_once "connect.php";

    if(isset($_POST['search'])) {
        $response = `<ul class="list-group"><li>No data found!</li></ul>`;

        $conn = new mysqli($host, $db_user, $db_password, $db_name);
        $q = $conn->real_escape_string($_POST['q']);

        $sql = $conn->query("SELECT speciesPL FROM birds WHERE speciesPL LIKE '%$q%'");

        if($sql->num_rows > 0) {
            $response = `<ul class="list-group>`;

            while($data = $sql->fetch_array())
                $response .= "<li class='list-group-item list-group-item-success'>".$data['speciesPL']."</li>";

            $response .= "</ul>";
        }


        exit($response);
    }

?>