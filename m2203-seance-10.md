# M2203 \| Séance 10 \| Ajout d’une BD \(bd\_new\_form.php et bd\_new\_valide.php\)

![GitHub Logo](.gitbook/assets/seance11b.jpg) 

## Mettre en oeuvre le formulaire bd\_new\_form.php et la page bd\_new\_valide.php en les créant dans le sous-dossier "admin"

dans le fichier bd\_new\_form.php, bien nommer les différents champs du formulaire comme sur le document ci-dessus.

Passer les champs en GET \( &lt;form... method='GET' ...\)

Vérifier que quand vous valider le formulaire en cliquant sur le bouton que les paramètres passent dans l'URL.

Réaliser une liste déroulante pour choisir le fournisseur plutôt que de saisir son code.

```php
<select name="four">
<?php 
$maconnexion = ... PDO ...
$req2='SELECT * FROM fournisseurs';
$resultat2 = $maconnexion->query($req2);

while( $un_four = $resultat2->fe.....() ) {
 echo '<option value="'.$un_four['...._id'].'">'.$un_four['...._nom'].'</option>';
 }
?>
</select>
```

dans le fichier bd\_new\_valide.php récupérer les champs du formulaire \(... $designation= $\_GET\['design'\] ...\)

dans le fichier bd\_new\_valide.php, préparer la requête SQL nécessaire pour ajouter un article \(tester votre requete dans phpMyAdmin avant de la tester dans le fichier php.

```php
<html>
...
<?php 
$maconnexion = ... PDO ...
$req='INSERT INTO .... VALUES(... $designation ... $prix ...)';
$maconnexion->query($req);
?>
vous venez d'ajouter un article (sans vérification:-) )
...
</html>
```

