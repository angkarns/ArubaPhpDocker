<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RTLS</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="main">
        <div class="tag">in progress</div>
        <div class="image">
            <img src="https://images.unsplash.com/photo-1618861859575-b6e43d10922a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3BzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60" alt="">
        </div>
        <div class="content">
            <h3>Universal Information Techonology</h3>
            <h1>Indoor Location Services</h1>
            <p>
                <?php
                include('server.php'); 

                $search = $_POST['search'];
                $column = $_POST['column'];

                $conn = new mysqli($servername, $username, $password, $dbname);

                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

                $sql = "SELECT * 
                    FROM sensors 
                    INNER JOIN device_inventory ON sensors.s_mac_address = device_inventory.d_macaddress
                    INNER JOIN tb_upload ON sensors.s_location = tb_upload.name
                    WHERE $column like '%$search%' 
                    ORDER BY s_timestamp DESC 
                    LIMIT 1";

                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<b>Name:</b> " . $row["d_name"];
                        echo "<br><b>MAC:</b> " . $row["s_mac_address"];
                        echo "<br><b>Device Type:</b> " . $row["s_device_type"];
                        echo "<br><b>Location:</b> " . $row["s_location"];
                        echo "<br><b>Last Seen:</b> " . $row["s_timestamp"];
                        // echo "<br>" . '<img src="/uploadimagefile/img/62a9bccdc5709.png" width = 500 >';
                        echo "<br>" . "<img width = 500 src='/uploadimagefile/img/".$row['image']. " ' >";
                    }
                } else {
                    echo "0 records";
                }
                $conn->close();
                ?>
            </p>
            <a href="index.php">ค้นหาใหม่</a>
            <p><a href="index.php?logout='1'" style="color: red;">Logout</a></p>
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