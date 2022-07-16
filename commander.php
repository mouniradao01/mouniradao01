<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title> Saisir coordonnées</title>
	<link rel="stylesheet" type="text/css"href="page.css">
<link rel="stylesheet" type="text/css"href="CSS1.css">
<script language="javascript" src="script.js">
</script>
</head>
<body onLoad='bienvenue4()' id="bod1">
	<p1 class="consultp"> Souhaitez-vous consulter nos autres pages??? Eh bien !!!Cliquez en bas !!!</p1>  
	<nav class="menu"> 
	            <div class="menu">  <a href="Accueil.html"> Accueill </a> </div>
				<div class="menu"><a href="Nos produits.html" onclick="return action()"> Marque </a></div>
                <div class="menu"><a href="Contact.php" onclick="return action()">Contact</a></div>
                <div class="menu"><a href="commander.php" onclick="return action()">Commander</a></div>
                <div class="menu"><a href="modifie-commande.php" onclick="return action()">Modifie-commande</a></div>
                 <div class="menu"><a href="facture.php">Voir la facture</a></div>
						
      </nav>
<form action="<?php echo $_SERVER['PHP_SELF'];?>"
	method="post">
<fieldset><legend><b> Commandes</b></legend>
	<table border=0>
<tr><td>Nom :</td><td><input type="text" name="nom" placeholder="Entrez votre Nom" class="btn" size="40" maxlength="30"></td>
<td>Prénom :</td><td><input type="text" name="prenom" placeholder="Entrez votre Prenom" class="btn" size="40" maxlength="30"/></td></tr>
<tr><td>Sexe :</td><td><input type="text" name="sexe" placeholder="Entrez votre Sexe" class="btn" size="40" maxlength="30"/></td>
<td>Adresse :</td><td><input type="text" name="adresse" placeholder="Entrez votre Adresse" class="btn" size="40" maxlength="60"/></td></tr>
<tr><td>Ville :</td><td><input type="text" name="ville" placeholder="Entrez votre Ville" class="btn" size="40" maxlength="50"/></td>
<td>Num_Tel :</td><td><input type="text" name="num_tel" placeholder="Entrez votre Num_Tel" class="btn" size="40" maxlength="30"/></td>
<tr><td>Mail :</td><td><input type="email" name="mail" placeholder="Entrez votre Mail" class="btn"size="40" maxlength="50"/>exemple nom@gmail.com</td>
<td>Marque_commandée :</td><td><input type="text" name="marque" placeholder="Entrez votre Marque_commandée" class="btn" size="40" maxlength="30"/></td></tr>
<tr><td>Date_commande :</td><td><input type="date" name="date" placeholder="Entrez votre Date_commande" class="btn" size="40" maxlength="30"/></td>
<td>Montantunitaire :</td><td><input type="text" name="Montantunitaire" placeholder="Entrez votre Montant du vehicule commandée" class="btn" size="40" maxlength="30"/></td></tr>

<tr>
<td COLSPAN=1><INPUT type="button" name="Bouton" value="Annuler"></td>
<td COLSPAN=1><INPUT type="RESET" NAME="Effacer" VALUE="Effacer le contenu des cases "></td>
<td COLSPAN=1><input type="submit" value="Envoyer dans la base de donnée"></td>
<td><INPUT type="submit" name="Voir le reçu" onclick=document.location.href="facture.php" value="Voir le reçu"/></td> </tr>
</table>
</fieldset>	
</form>

<?php
include("connexpdo.inc.php"); $idcom=connexpdo('commandes','myparam');
if(!empty($_POST['nom'])&& !empty($_POST['adresse'])&& !empty($_POST['ville']))
{
	$id_client="\N";
	$nom=$idcom->quote($_POST['nom']);
	$prenom=$idcom->quote($_POST['prenom']);
	$sexe=$idcom->quote($_POST['sexe']);
	$adresse=$idcom->quote($_POST['adresse']);
	$ville=$idcom->quote($_POST['ville']);
	$num_tel=$idcom->quote($_POST['num_tel']);
	$mail=$idcom->quote($_POST['mail']);
	$marque=$idcom->quote($_POST['marque']);
	$date=$idcom->quote($_POST['date']);
	$Montantunitaire=$idcom->quote($_POST['Montantunitaire']);
	
	$requete="INSERT INTO client VALUES($id_client,$nom,$prenom,$sexe,$adresse,$ville,$num_tel,$mail,$marque,$date,$Montantunitaire)";
	$nblignes=$idcom->exec($requete);
if($nblignes!=1){ 
$mess_erreur=$idcom->errorInfo();
echo "Insertion impossible, code",$idcom->errorCode(),$mess_erreur[2];
echo"<script type=\"text/javascript\">alert('Erreur: ".$idcom->errorCode()."')
</script>";
}
else { echo "<script type=\"text/javascript\">
alert('Vous etes enregistrer votre numero de client est:".$idcom->lastInsertId()."')
</script>";
$_SESSION['id_client'] = $idcom->lastInsertId();

 $idcom=null;
} 

}
else { echo "<h3>Formulaire a completer!</h3>";}
?>
</body>
<footer>
<a href="www.facebook.com"><img src="Image/face.jpg"></a>
<a href="www.telegram.com"><img src="Image/tel.jpg"></a>
<a href="www.instagram.com"><img src="Image/inst.jpg"></a>
<a href="www.whatsapp.com"><img src="Image/wat.jpg"></a> </br>
<em id="m">Dao Aïchatou<em></br>
<em id="m">Traore Mounira<em>
</footer></html>