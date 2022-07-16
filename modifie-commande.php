<!DOCTYPE html >
<html xml:lang="fr">
<head>
<meta "charset=iso-8859-1" />
<link rel="stylesheet" type="text/css"href="page.css">
<link rel="stylesheet" type="text/css"href="CSS1.css">
<script language="javascript" src="script.js">
<title>Modifiez vos coordonnées</title>
</head>
<body onLoad='bienvenue5()'></script>
	<p1 class="consultp"> Souhaitez-vous consulter nos autres pages??? Eh bien !!!Cliquez en bas !!!</p1>  
	<nav class="menu"> 
	            <div class="menu">  <a href="Accueil.html"> Accueill </a> </div>
				<div class="menu"><a href="Nos produits.html" onclick="return action()"> Marque </a></div>
                <div class="menu"><a href="Contact.php" onclick="return action()">Contact</a></div>
                <div class="menu"><a href="commander.php" onclick="return action()">Commander</a></div>
                <div class="menu"><a href="modifie-commande.php" onclick="return action()">Modifie-commande</a></div>
                
						
      </nav>
<form action= "modifier-commande.php" method="post" >
<fieldset>
<legend><b>Saisissez votre code client pour modifier vos coordonnées</b></legend>
<table> <tr> <td>Code client : </td>
<td><input type="text" name="code" placeholder="Entrez l'identifiant du client" class="btn" size="20" maxlength="10"/> </td></tr>
<tr><td>Modifier : </td> <td><input type="submit" value= "Cliquez pour modifier"/ class="button4"></td></tr>
</table>
</fieldset>
</form>
</body>
</html>