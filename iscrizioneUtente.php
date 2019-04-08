<?php
include("include/databaseConnection.php");
$sql = "SELECT * FROM citta";
$result = $mysqli->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Iscrizione utente</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h1>Iscrizione Utente</h1>
<?php
include "include/mainMenu.php";
?>
<form action="action/addUtente.php" method="post">
    <table>
        <tr>
            <td><label for="nome">Nome</label></td>
            <td><input type="text" name="nome" id="nome"></td>
        </tr>
        <tr>
            <td><label for="cognome">Cognome</label></td>
            <td><input type="text" name="cognome" id="cognome"></td>
        </tr>
        <tr>
            <td><label for="codiceFiscale">Codice Fiscale</label></td>
            <td><input type="text" name="codiceFiscale" id="codiceFiscale"></td>
        </tr>
        <tr>
            <td><label for="dataNascita">Data di Nascita</label></td>
            <td><input type="date" name="dataNascita" id="dataNascita"></td>
        </tr>
        <tr>
            <td colspan="2">RESIDENZA</td>
        </tr>
        <tr>
            <td><label for="via">Via/Strada</label></td>
            <td><input type="text" name="via" id="via"></td>
        </tr>
        <tr>
            <td><label for="citta">Città</label></td>
            <td>
                <select name="citta" id="citta">
                    <?php
                    while ($riga = $result->fetch_assoc()) {
                        echo '<option value="'.$riga['idCitta'].'">'.$riga['nomeCitta'].'</option>';
                    }
                    ?>
                </select>
            </td>
        </tr>
        <tr>
        <td colspan="2">
            <input type="submit">
        </td>

        </tr>
    </table>

</form>
</body>
</html>