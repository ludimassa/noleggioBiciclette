<?php
include ("../include/databaseConnection.php");
$nomeStazione=$_REQUEST['nomeStazione'];
$sql = '
INSERT INTO 
stazioniNoleggio(nomeStazione) VALUES 
("'.$nomeStazione.'")';

if( $mysqli->query($sql)){
    echo "STAZIONE DI NOLEGGIO INSERITA CORRETTAMENTE";
    echo '<br><a href="../index.php">HOME PAGE</a>';
}
else{
    echo "STAZIONE DI NOLEGGIO NON INSERITA".$mysqli->error;
    echo '<br><a href="../index.php">HOME PAGE</a>';
}
?>