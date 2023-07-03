<?php 

    $servername = "192.168.1.66";
    $username = "root";
    $password = "password";
    $dbname = "iot";

    // Create Connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$conn) {
        die("Connection failed" . mysqli_connect_error());
    } 

?>