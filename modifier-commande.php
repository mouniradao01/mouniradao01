<?php
if(empty($_POST['code'])){header("Location:modifie-commande.php");} 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet"  href="CSS1.css" /> 
<link rel="stylesheet" type="text/css"href="page.css">
<title>Modifiez vos coordonnées</title>

</head>
<body>
<?php
include('connexpdo.inc.php');
$idcom=connexpdo('commandes','myparam');
if(!isset($_POST['modif']))
{
$code=(integer)$_POST['code']; 
//Requête SQL
$requete="SELECT * FROM client WHERE id_client='$code' ";
$result=$idcom->query($requete);
$coord=$result->fetch(PDO::FETCH_NUM);
//Création du formulaire complété avec les données existantes 
echo "<form action= \"". $_SERVER['PHP_SELF']."\" method=\"post\"enctype=\"application/x-www-form-urlencoded\">";
echo "<fieldset>";
echo "<legend><b>Modifiez vos coordonnées</b></legend>";
echo "<table>";
echo "<tr><td>Nom: </td><td><input type=\"text\" name=\"nom\"size=\"40\" maxlength=\"30\" value=\"$coord[1]\"/> </td>";
echo "<td>Prénom: </td><td><input type=\"text\" name=\"prenom\"size=\"40\" maxlength=\"30\" value=\"$coord[2]\"/></td>";
echo "<td>sexe: </td><td><input type=\"text\" name=\"sexe\"size=\"40\" maxlength=\"2\" value=\"$coord[3]\"/></td></tr>";
echo "<tr><td>Adresse: </td><td><input type=\"text\" name=\"adresse\"size=\"40\" maxlength=\"60\" value=\"$coord[4]\"/></td>";
echo "<td>Ville: </td><td><input type=\"text\" name=\"ville\"size=\"40\" maxlength=\"40\" value=\"$coord[5]\"/></td>";
echo "<td>Num_Tel: </td><td><input type=\"text\" name=\"Num-Tel\"size=\"40\" maxlength=\"40\" value=\"$coord[6]\"/></td></tr>";
echo "<tr><td>Mail: </td><td><input type=\"text\" name=\"mail\"size=\"40\" maxlength=\"50\" value=\"$coord[7]\"/></td>";
echo "<td>Marque_commande: </td><td><input type=\"text\" name=\"marque\"size=\"40\" maxlength=\"40\" value=\"$coord[8]\"/></td>";
echo "<td>Date_commande: </td><td><input type=\"text\" name=\"date\"size=\"40\" maxlength=\"40\" value=\"$coord[9]\"/></td></tr>";
echo "<tr><td><input type=\"reset\" value=\" Effacer \"></td>";
echo"<td><input type=\"submit\" name=\"modif\" value=\"Enregistrer\"> </td ></tr> </table>";
echo "</fieldset>";
echo "<input type=\"hidden\" name=\"code\" value=\"$code\"/>";
echo "</form>";
$result->closeCursor();
$idcom=null;
}
elseif(isset($_POST['nom'])&& isset($_POST['prenom'])&& isset($_POST['sexe'])&& isset($_POST['adresse'])&& isset($_POST['ville'])&& isset($_POST['marque']))
{
//ENREGISTREMENT
$nom=$idcom->quote($_POST['nom']);
$adresse=$idcom->quote($_POST['adresse']);
$ville=$idcom->quote($_POST['ville']);
$mail=$idcom->quote($_POST['mail']);
$code=(integer)$_POST['code'];
//Requête SQL
$requete="UPDATE client SET nom=$nom,adresse=$adresse,ville=$ville,mail=$mail WHERE id_client=$code"; 
$result=$idcom->exec($requete);
if($result!=1)
{
echo "<script type=\"text/javascript\">
alert('Erreur DAN LA REQUETE : ".$idcom->errorCode()."')</script>"; 
}
else
{
echo "<script type=\"text/javascript\"> alert('Vos modifications sont enregistrées');window.location='Contact.php';</script>"; 

}
$idcom=null;

}
else
{
echo "Modifier vos coordonnées!";
}
?>
</body>
</html>