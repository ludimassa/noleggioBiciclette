<?php

var_dump($_POST);
die();
include ("../include/databaseConnection.php");

$idUtente=$_REQUEST['idUtente'];
$nomeUtente=$_REQUEST['nome'];
$cognome=$_REQUEST['cognome'];
$codiceFiscale=$_REQUEST['codiceFiscale'];
$dataNascita=$_REQUEST['dataNascita'];
$via=$_REQUEST['via'];
$idCitta=(int)$_REQUEST['citta'];

$sql = '
INSERT INTO 
utenti(idUtente, 
nomeUtente, 
cognome, 
codiceFiscale, 
dataNascita, 
via, 
idCitta) 
VALUES ("'.$idUtente.'")';

$result = $mysqli->query($sql);
?>