[Retour à l'accueil](README.md)

# M2202 | Séance 5 | Sessions et panier

## Rappels sur les variables 'superglobale', ou variable globale automatique

Ces variables sont automatiques généré par le script si cela est nécessaire. Ces variables sont accessibles partout dans le code.

Vous connaissez et utilisez déjà ces variables avec les formulaires : `$_POST` et `$_GET`. Ces deux variables sont des tableaux associatifs permettant, respectivement, de récupérer des données envoyées par le client en POST ou en GET.

Il existe bien d'autres variables de ce type :

* `$_SERVER` : ce sont des valeurs renvoyées par le serveur (IP, ...)
* `$_SESSION` : on y retrouve les variables de session. Ce sont des variables qui restent stockées sur le serveur le temps de la présence d'un visiteur.
* `$_COOKIE` : contient les valeurs des cookies enregistrés sur l'ordinateur du visiteur. Cela nous permet de stocker des informations sur l'ordinateur du visiteur pendant plusieurs mois, pour se souvenir de son nom par exemple
* `$_FILES` : elle contient la liste des chiers qui ont été envoyés via le formulaire précédent

## les Sessions

### Principe

Les sessions constituent un moyen de conserver des variables sur toutes les pages de votre site. Jusqu'ici, nous étions parvenus à passer des variables de page en page via la méthode GET (en modiant l'URL : page.php ?variable=valeur) et via la méthode POST (à l'aide d'un formulaire).

Cette solution n'est pas très pratique et assez peu sécurisée. Comment faire, par exemple, si vous souhaitez mémoriser le fait qu'un utilisateur soit connecté/identié ?

### Fonctionnement

L'utilisation des sessions se déroule en 3 grandes étapes :

1. Un visiteur arrive sur votre site. On demande à créer une session pour lui. PHP génère alors un numéro unique. Ce numéro est souvent très gros et écrit en hexadécimal, par exemple : a02bbc6198e6e0cc2715047bc3766f.
2. Une fois la session générée, on peut créer une innité de variables de session pour nos besoins. Par exemple, on peut créer une variable `$_SESSION['nom']`. Le
serveur conserve ces variables même lorsque la page PHP a ni d'être générée. Cela
veut dire que, quelle que soit la page de votre site.
3. Lorsque le visiteur se déconnecte de votre site, la session est fermée et PHP "oublie" alors toutes les variables de session que vous avez créées.

Le numéro de session généré, qui sert d'identiant et est appelé  ID de session  (ou PHPSESSID). PHP transmet automatiquement cet ID de page en page en utilisant généralement un cookie stocké sur l'ordinateur du visiteur.

Il est en fait diffcile de savoir précisément quand un visiteur quitte votre site. En effet, lorsqu'il ferme son navigateur ou va sur un autre site, le vôtre n'en est pas informé. Soit le visiteur clique sur un bouton "Déconnexion" (que vous aurez créé) avant de s'en aller, soit on attend quelques minutes d'inactivité pour le déconnecter automatiquement : on parle alors de timeout. Le plus souvent, le visiteur est déconnecté par un timeout.

En fait derrière ce fonctionnement, qui peut sembler complexe, la manipulation en PHP des sessions est très simple. Il n'y a que 3 choses à savoir :

* `session_start()` : pour démarrer le système de session. Si aucune session existe alors elle est créée, sinon la session existante est récupérée. Cette instruction doit être présente au début de chaque page utilisant les sessions.
* `session_destroy()` : pour "détruire", fermer la session d'un utilisateur. Par exemple si l'utilisateur clique sur un bouton déconnexion.
* Manipuler les tableaux associatifs ! (mais ca c'est du S1)

 > Attention au piège !
Il faut appeler `session_start()` sur chacune de vos pages **AVANT** d'écrire le moindre code HTML (avant même la balise <!DOCTYPE>). Si vous oubliez de lancer `session_start()`, vous ne pourrez pas accéder aux variables superglobales `$_SESSION`.

Ci-dessous un exemple complet d'utilisation de session.

Première page (on pourrait imaginer un formulaire de connexion qui récupère les données.)

```php
<?php
// On demarre la session AVANT d'ecrire du code HTML
session_start ();

// On ajoute quelques variables de session dans $_SESSION
$_SESSION ['prenom '] = 'Jean ';
$_SESSION ['nom '] = 'Dupont ';
$_SESSION ['age '] = 24;
?>
<!DOCTYPE html >
<html > 
...
<body >
<p>
Salut <?php echo $_SESSION['prenom']; ?> ! <br />
Tu es sur l'accueil de mon site (index.php ). Tu veux aller sur une autre page ?</p>
<a href="page2.php">Aller sur une autre page</a>
</body>
</html>
```
 > Remarque : On peut créer/modier les variables de session n'importe où dans le code. La seule chose qui importe, c'est que le `session_start()` soit fait au tout début de la page.
 
 Une autre page utilisant la session précédemment créée :
 
 ```php
 <?php
 session_start (); // On demarre la session AVANT toute chose
 ?>
 <! DOCTYPE html>
 <html>
 ...
 <body>
 
 <p>Re - bonjour ! </p>
 <p>
 Je me souviens de toi ! Tu t'appelles <?php echo $_SESSION['prenom'] .' ' . $_SESSION['nom']; ?> ! <br />
 Et tu as <?php echo $_SESSION['age ']; ?> ans.
 </p>
 </body >
 </html >
 ```
 
### Cas d'utilisation des sessions
 
 Concrètement, les sessions peuvent servir dans de nombreux cas sur votre site (et pas seulement pour retenir un nom et un prénom !). Voici quelques exemples :
 
 * Imaginez un script qui demande un login et un mot de passe pour qu'un visiteur puisse se connecter (s'authentier). On peut enregistrer ces informations dans des variables de session et se souvenir de l'identiant du visiteur sur toutes les pages du site !
 * On peut restreindre l'accès à certaines pages en fonction de l'utilisateur connecté
 * On peut sauvegarder un panier sur un site e-commerce
 * On peut se souvenir de la langue choisie pour acher un site
 * ...
 
 ## Exercice 
 
Ecrire 3 pages php (index.php, page1.php et page2.php) Sur la page index.php faite un formulaire avec deux champs (nom, ville), et sauvegarder ces champs dans une session (on utilisera le chier index.php pour le traitement également. Sur cette page *index.php*, vous mettrez deux liens pour accéder aux deux autres pages. Sur chacune de ces deux pages vous afficherez les informations de la session.