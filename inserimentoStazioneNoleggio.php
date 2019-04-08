<html>
<head>
    <meta charset="UTF-8">
    <title>Inserimento stazione di noleggio</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<?php
include "include/mainMenu.php";
?>
<h1>Inserimento Stazione di Noleggio</h1>
<form action="action/addStazioneNoleggio.php">
    <table>
        <tr>
            <td><label for="nomeStazione">Nome Stazione</label></td>
            <td><input type="text" id="nomeStazione" name="nomeStazione"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Salva stazione">
            </td>
        </tr>
    </table>
</form>
</body>
</html>