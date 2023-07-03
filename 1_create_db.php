<?php 
    $servername = "127.0.0.1";
    $username = "angkarns";
    $password = "root00--";
    $dbname = "iot";

    // Create Connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check Connection
    if (!$conn) {
        die("Connection failed " . mysqli_connect_error());      // call "die" function
    } else {
        echo "Connected successful";
    }
?>
