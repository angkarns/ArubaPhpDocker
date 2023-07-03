<?php
session_start();

if (!$_SESSION['username']) {
    header("location: login.php");
} else {

?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>User Page</title>

        <link rel="stylesheet" href="styleuser.css">
    </head>

    <body>
        <h3>Hi, <?php echo $_SESSION['username']; ?></h3>
        <h1>You are only member(m), not admin(a).
        <br>Pls contact 02-6943101 (Angkarn S.)</h1>
        <p><a href="login.php">Logout</p>
    </body>

    </html>

<?php } ?>