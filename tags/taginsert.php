<?php
require 'tagdb.php';
// get the post records
$d_name = $_POST['d_name'];
$d_macaddress = $_POST['d_macaddress'];

// sql to insert data
$sql = "INSERT INTO device_inventory (d_name, d_macaddress)
        VALUES ('$d_name', '$d_macaddress')";

if (mysqli_query($conn, $sql)) {
    echo "<br>New record created successfully<br>";
} else {
    echo "<br>Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

include 'taglists.php';
