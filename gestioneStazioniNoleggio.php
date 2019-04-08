<?php
    include("include/databaseConnection.php");
    $q="SELECT * FROM stazioniNoleggio";
    $result=$mysqli->query($q);
?>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gestionale noleggio biciclette</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<?php
include "include/mainMenu.php";
?>
<h1>Stazioni di Noleggio</h1>
<table>
    <?php
        while($row=$result->fetch_row()){
            echo "<tr>";
            echo "<td>";
            echo $row[0];
            echo "</td>";
            echo "<td>";
            echo $row[1];
            echo "</td>";
            echo "</tr>";
        }
    ?>
</table>
</body>
</html>