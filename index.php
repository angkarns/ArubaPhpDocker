<?php
session_start();

if (!isset($_SESSION['username'])) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
}

if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['username']);
    header('location: login.php');
}

if ($_SESSION['userlevel'] == 'm') {
    $_SESSION['success'] = "Your are now logged in";
    header("location: user_page.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tags Search</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="homeheader">
        <h3>:)</h3>
    </div>

    <div class="homecontent">
        <!--  notification message -->
        <?php if (isset($_SESSION['success'])) : ?>
            <div class="success">
                <h3>
                    <?php
                    echo $_SESSION['success'];
                    unset($_SESSION['success']);
                    ?>
                </h3>
            </div>
        <?php endif ?>

        <!-- logged in user information -->
        <?php if (isset($_SESSION['username'])) : ?>
            <p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
            <p><a href="index.php?logout='1'" style="color: red;">Logout</a></p>
        <?php endif ?>

    </div>
    <div class="main">
        <div class="tag">in progress</div>
        <div class="image">
            <img src="https://images.unsplash.com/photo-1618861859575-b6e43d10922a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3BzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60" alt="">
        </div>
        <div class="content">
            <h3>Universal Information Techonology</h3>
            <h1>Aruba Beacon Technology</h1>
            <p>
            <form action="phpsearchoption.php" method="post">
                <b>Search Tags</b> <input type="text" name="search"><br>
                <b>Option:</b> <select name="column">
                    <option value="d_name">Tags Name</option>
                    <option value="s_mac_address">Tags MAC Address</option>
                </select><br>
                <input type="submit">
            </form>
            </p>
        </div>
        <div class="footer">
            <div class="ft-l">
                <img src="https://images.unsplash.com/photo-1620428268482-cf1851a36764?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1409&q=80" alt="">
                <p>Angkarn</p>
            </div>
            <div class="ft-r">
                <p>0 Comments</p>
            </div>
        </div>
    </div>
</body>

</html>