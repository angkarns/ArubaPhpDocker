<?php 

    $servername = "10.10.10.51";
    $username = "root";
    $password = "root00--";
    $dbname = "iot";

    // Create Connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$conn) {
        die("Connection failed" . mysqli_connect_error());
    } 

?>