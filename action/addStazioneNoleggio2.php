<?php
include ("../include/databaseConnection.php");
$idStazione=$_REQUEST['idStazione'];
$nomeStazione=$_REQUEST['nomeStazione'];
$sql = '
INSERT INTO 
stazioniNoleggio(idStazione,nomeStazione) VALUES 
("'.$idStazione.'","'.$nomeStazione.'")';

if( $mysqli->query($sql)){
    echo "STAZIONE DI NOLEGGIO INSERITA CORRETTAMENTE";
    echo '<br><a href="../index.php">HOME PAGE</a>';
}
else{
    echo "STAZIONE DI NOLEGGIO NON INSERITA".$mysqli->error;
    echo '<br><a href="../index.php">HOME PAGE</a>';
}
?>