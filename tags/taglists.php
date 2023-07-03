<?php
require 'tagdb.php';
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Tag Lists</title>
</head>

<body>
    <br><b>Tag Lists:</b>
    <table border=1 cellspacing=0 cellpadding=10>
        <tr>
            <td>#</td>
            <td>Name</td>
            <td>MAC</td>
        </tr>
        <?php
        $i = 1;
        $rows = mysqli_query($conn, "SELECT * FROM device_inventory ORDER BY d_no DESC")
        ?>

        <?php foreach ($rows as $row) : ?>
            <tr>
                <td><?php echo $i++; ?></td>
                <td><?php echo $row["d_name"]; ?></td>
                <td><?php echo $row["d_macaddress"]; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
    <br>
    <a href="../tags">Register New Tag</a>
</body>

</html>