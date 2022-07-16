<?php
session_start();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet"  href="CSS1.css" /> 
<link rel="stylesheet" type="text/css"href="page.css">
<title>Votre facture</title>
</head>
<body>
<?php
include("connexpdo.inc.php"); $idcom=connexpdo('commandes','myparam');
if(!isset($_POST['modif']))
{
$code=$_SESSION['id_client']; 
//Requête SQL
$requete="SELECT * FROM client WHERE id_client='$code' ";
$result=$idcom->query($requete);
$coord=$result->fetch(PDO::FETCH_NUM);
//Création du formulaire complété avec les données existantes 
echo "<form action= \"". $_SERVER['PHP_SELF']."\" method=\"post\"enctype=\"application/x-www-form-urlencoded\">";
echo "<fieldset>";
echo "<legend><b>Voici votre facture et AMORA CARS vous souhaite BONNE JOURNNEE!! </b></legend>";
echo "<table>";
echo "<tr><td>Nom : </td><td><input type=\"text\" name=\"nom\"size=\"40\" maxlength=\"30\" value=\"$coord[1]\"/> </td>";
echo "<td>Prénom : </td><td><input type=\"text\" name=\"prenom\"size=\"40\" maxlength=\"30\" value=\"$coord[2]\"/></td></tr>";
echo "<tr><td>Sexe : </td><td><input type=\"text\" name=\"sexe\"size=\"40\" maxlength=\"60\" value=\"$coord[3]\"/></td>";
echo "<td>Adresse : </td><td><input type=\"text\" name=\"adresse\"size=\"40\" maxlength=\"60\" value=\"$coord[4]\"/></td></tr>";
echo "<tr><td>Ville : </td><td><input type=\"text\" name=\"ville\"size=\"40\" maxlength=\"60\" value=\"$coord[5]\"/></td>";
echo "<td>Num_Tel : </td><td><input type=\"text\" name=\"num_tel\"size=\"40\" maxlength=\"60\" value=\"$coord[6]\"/></td></tr>";
echo "<tr><td>Mail : </td><td><input type=\"email\" name=\"email\"size=\"40\" maxlength=\"60\" value=\"$coord[7]\"/></td>";
echo "<td>Marque-voiture: </td><td><input type=\"text\" name=\"marque-voiture\"size=\"40\" maxlength=\"60\"value=\"$coord[8]\"/></td></tr>";
echo "<tr><td>Date-vente: </td><td><input type=\"text\" name=\"date-vente\"size=\"40\" maxlength=\"60\" value=\"$coord[9]\"/></td>";
echo "<td>montant-unitaire: </td><td><input type=\"text\" name=\"montant-unitaire\"size=\"40\" maxlength=\"60\" value=\"$coord[10]\"/></td></tr>";
echo "</fieldset>";
echo "</form>";
$result->closeCursor();
//$idcom=null;
}
?>

</body>
</html