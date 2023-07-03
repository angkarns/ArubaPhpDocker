<?php
$conn = mysqli_connect("192.168.1.66", "root", "password", "iot");
 // Check Connection
 if (!$conn) {
    die("Connection failed " . mysqli_connect_error());      // call "die" function
} 