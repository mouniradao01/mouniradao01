<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<link rel="stylesheet"  href="CSS1.css" /> 
<link rel="stylesheet" type="text/css"href="page.css">
<title> Contact </title>
<script type="text/javascript" src="script.js"></script>
</head>
<header>  </header>
<body onLoad='bienvenue3()'>
<p1 class="consultp"> Souhaitez-vous consulter nos autres pages??? Eh bien !!!Cliquez en bas !!!</p1>  
	<script type="text/javascript"> document.body.style.backgroundColor='silver'</script>
<nav class="menu"> 
	                   <div class="menu">  <a href="Accueil.html"> Accueill </a> </div>
				             <div class="menu"><a href="Nos produits.html" onclick="return action()"> Marque </a></div>
                     <div class="menu"><a href="Contact.php" onclick="return action()">Contact</a></div>
                     <div class="menu"><a href="commander.php" onclick="return action()">Commander</a></div>
                     <div class="menu"><a href="modifie-commande.php" onclick="return action()">Modifie-commande</a></div>
</nav>						
<marquee id="contenu"> Pour plus d'information veillez contacter sur ces differents numéros  </marquee><br/>
<a id="min" href="mailto:amoaracars@gmail.com" > Contactez-nous !</a> <br/></p>
<form action="<?php echo $_SERVER['PHP_SELF'];?>"
	method="post">
<fieldset border-corner-shape:scoop; border-radius:10%/30px;width:400px;height:300px;><legend><b> Suggestions</b></legend>
<table border:0>
 <div ><tr><td>Nom:</td><td><input type="text" name="nom" placeholder="Entrez votre Nom" class="btn" size="40" maxlength="30"/></td>
<td>Prénom:</td><td><input type="text" name="prenom" placeholder="Entrez votre Prenom" class="btn
	" size="40" maxlength="30"/></td></tr>
<tr><td>Sexe:</td><td><input type="text" name="sexe" placeholder="Entrez votre Sexe" class="btn" size="40" maxlength="30"/></td>
<td>Age:</td><td><input type="text" name="age" placeholder="Entrez votre Age" class="btn" size="40" maxlength="30"/></td></tr>
<tr>
	<td>Profession:</td>
	<td>
	<SELECT name="Profession">
		<OPTION VALUE="Enseignant">Enseignant</OPTION>
		<OPTION VALUE="Etudiant">Etudiant</OPTION>
		<OPTION VALUE="Ingenieur">Ingénieur</OPTION>
		<OPTION VALUE="Retraite">Retraité</OPTION>
		<OPTION VALUE="Autre">Autre</OPTION>
	</SELECT>
	</td>
<td>Adresse:</td><td><input type="text" placeholder="Entrez votre Adresse" class="btn" name="adresse" size="40" maxlength="60"/></td>
<td >Mail:</td><td><input type="email" name="mail" placeholder="Entrez votre Mail" class="btn" size="40" maxlength="50"/>exemple nom@gmail.com </br></td></tr>
<tr><td>Num_Tel:</td><td><input type="text" name="num_tel" placeholder="Entrez votre Num_Tel" class="btn" size="40" maxlength="30"/></td>
	<td>Messages:</td>
	<td>
	<TEXTAREA rows="15" name="messages" placeholder="Tapez ici votre messages" class="btn">
	</TEXTAREA>
	</td>
</tr> 
<tr>
<td COLSPAN=1> <INPUT type="button" name="Bouton" value="Annuler" ></td>
<td COLSPAN=1> <INPUT type="RESET" NAME="Effacer" VALUE="Effacer le contenu des cases "></td>
<td COLSPAN=1> <input type="submit" value="Envoyer dans la base de donnée"></td> 
<td COLSPAN=1> <input type="button" value="Envoyez sur l'email directement" onClick= document.location.href="mailto:womouniratraore@.com"></td>
</tr></div>
</table>
</fieldset>
</form>
</form>
<?php
include("connexpdo.inc.php"); $idcom=connexpdo('suggestion','myparam');
if(!empty($_POST['nom'])&& !empty($_POST['adresse'])&& !empty($_POST['prenom']))
{
	$identifiant="\N";
	$nom=$idcom->quote($_POST['nom']);
	$prenom=$idcom->quote($_POST['prenom']);
	$sexe=$idcom->quote($_POST['sexe']);
  $age=$idcom->quote($_POST['age']);
  $profession=$idcom->quote($_POST['profession']);
	$adresse=$idcom->quote($_POST['adresse']);
	$mail=$idcom->quote($_POST['mail']);
	$num_tel=$idcom->quote($_POST['num_tel']);
	$messages=$idcom->quote($_POST['messages']);
	$requete="INSERT INTO consultant VALUES($identifiant,$nom,$prenom,$sexe,$age,$profession,$adresse,$mail,$num_tel,$messages)";
	$nblignes=$idcom->exec($requete);

if($nblignes!=1)
{ 
  $mess_erreur=$idcom->errorInfo();
  echo "Insertion impossible, code",$idcom->errorCode(),$mess_erreur[2];
  echo"<script type=\"text/javascript\">alert('Erreur: ".$idcom->errorCode()."')
  </script>";
}
else 
	{ echo "<script type=\"text/javascript\">
      alert('Vous etes enregistrer votre numero de client est:".$idcom->lastInsertId()."')
     </script>";
     $idcom=null;
}   }
      else { echo "<h3>Formulaire a completer!</h3>";}
?>


</body>
</html>
<footer>
<a href="www.facebook.com"><img src="Image/face.jpg"></a>
<a href="www.telegram.com"><img src="Image/tel.jpg"></a>
<a href="www.instagram.com"><img src="Image/inst.jpg"></a>
<a href="www.whatsapp.com"><img src="Image/wat.jpg"></a> </br> 
<em id="m">Dao Aïchatou<em></br>
<em id="m">Traore Mounira<em>
</footer>
