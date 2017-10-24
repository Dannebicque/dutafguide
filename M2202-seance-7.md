[Retour à l'accueil](README.md)

# M2202 | Séance 7 | Sécurisation du back-office en PHP

## Elements de correction sur la partie Panier


### Ajout du lien "ajouter au panier"
Dans le catalogue (et/ou dans le résultat de la recherche), il faut ajouter un bouton permettant d'ajouter un article dans le panier. On peut s'inspirer du code ci-dessous

```php
<a href="add_cart.php?numart='.$ligne['article_id'].'">Ajouter au panier</a>
```

Ce lien va transmettre l'id de l'article que l'on souhaite ajouter à la page de traitement add_cart.php

### Traitement de l'ajout au panier

Le traitement pourrait ressembler à l'exemple ci-dessous. ** Attention des lignes sont volontairement manquantes **

```php
<?php
$numart = ...; //récupération de l'ID passé par le catalogue
$dblink = ... ; //connexion à la BDD

$requete = 'SELECT * FROM articles WHERE article_id = ' . $numart;

$exearticle = $dblink->query($requete);
$article = $exearticle->fetch(); //récupération du premier (et normalement unique) article retourné par la requê
te

//On construit un tableau contenant les informations de l'article, qui seront sauvegardées dans le panier

    $tableau = array(
        'nom'      => $article['article_nom'],
        'code'     => $article['article_code'],
        'prix'     => $article['article_prix'],
        'quantite' => 1
    );

    //si le panier existe on ajoute le produit
    if (isset($_SESSION['panier']))
    {
        $_SESSION['panier'][$article['article_id']] = $tableau;
    } else
    {
    //sinon, on initialise le panier et on ajoute le produit.
        $_SESSION['panier'] = array();
        $_SESSION['panier'][$article['article_id']] = $tableau;
    }
}
?>
<h2>Le produit <?php echo $article['article_nom']; ?> a été ajouté au panier.</h2>
```
Dans l'exemple ci-dessous, on sauvegarde le panier sous la forme d'un tableau associatif, qui est lui même sauvegardé dans un tableau dont l'index est l'id du produit. Cette solution permet de faciliter la manipulation des articles, et donc éventuellement de controler rapidement (en recherchant l'existance de l'Id d'un produit dans le panier) la présence d'un produit. Cette solution simplifie le fait de pouvoir augmenter la quantité d'un produit.

Exemple de modification permettant de gérer les quantités.

```php

<?php
//.. récupération de l'article

//on regarde si le produit est déjà existant. On pourrait utiliser des fonctions pour manipiler des tableaux en PHP également
if (isset($_SESSION['panier'][$article['article_id']]))
{
    //mise à jour, puisque le produit est déjà présent
    $_SESSION['panier'][$article['article_id']]['quantite']++;
} else{
    //création
    // .. comme fait précédemment.
}
?>
<h2>Le produit <?php echo $article['article_nom']; ?> a été ajouté au panier.</h2>
```

### Affichage du panier

La session est un simple tableau. On a pris soin de sauvegarder toutes les informations d'un article dans la session (ce que l'on ne ferait pas forcément en réalité). On doit donc manipuler la session (qui est une varible comme les autres) pour afficher le panier.

On pourrait obtenir le code suivant :

```php
<table class="table">
    <thead>
    <tr>
        <th>Produit</th>
        <th>Code</th>
        <th>Prix U.</th>
        <th>Qté</th>
        <th>Prix TTC</th>
    </tr>
    </thead>
    <?php
    $somme = 0;
    foreach ($_SESSION['panier'] as $article){
        $prixttc = $article['prix'] * $article['quantite'];
        $somme += $prixttc;
        echo '<tr>
        <th>'.$article['nom'].'</th>
        <th>'.$article['code'].'</th>
        <th>'.number_format($article['prix'],2).' €</th>
        <th>'.$article['quantite'].'</th>
        <th>'.number_format($prixttc,2).' €</th>
    </tr>'  ;
    }
    ?>
        <tfoot>
        <tr>
            <td colspan="4" style="text-align: right">Total</td>
            <td><?php echo number_format($somme, 2); ?> €</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right">TVA</td>
            <td><?php $tva = $somme *0.2; echo number_format($tva, 2); ?> €</td>
        </tr>
        </tfoot>
</table>
```

## Principe de la sécurisation d'un backoffice

Nous allons mettre en place un système de login afin de protégrer une partie du site. Pour cela nous allons avoir besoin des éléments suivants :

* Une table contenant les informations sur les utilisateurs (login, mot de passe, ...)
* Un formulaire de connexion et sa page de traitement
* Un test sur chacune des pages à protéger pour vérifier que l'utilisateur est connecté
* Une page de déconnexion

Pour réaliser cette partie, nous allons une nouvelle fois utiliser les sessions, afin de mémoriser le fait qu'un utilisateur soit connecté. Cela évitera de lui demdander sur chaque page de se connecter.

### La table 'utilisateurs'

Cette table doit contenir, a minima, 3 champs :

* Un ID (utilisateur_id), unique, auto incréménté
* Un login (utilisateur_login), qui devrait être unique (unique) et de type texte.
* Un mot de passe (utilisateur_mdp), qui sera du texte
* Tous les champs que vous pourriez trouver utile (mail, nom, ...)


** Pour des raisons de souplesse et de simplicité on utilisera sha1 pour crypter nos mots de passe. Cette solution n'est pas recommandé, car le décryptage d'un mot de passe sha1 est relativement facile. PHP propose des méthodes pour crypter les mots de passe de manière efficace : http://php.net/manual/fr/function.password-hash.php **

#### Travail à faire 

* Créer cette table dans votre base de données.
* Ajoutez manuellement (insérer) un ou plusieurs utilisateurs. Vous pouvez utiliser le site : https://www.sha1.fr/ pour crypter votre mot de passe.


### Formulaire de connexion

Le formulaire de connexion doit contenir deux champs (login et mot de passe), et envoyer vers une page de traitement que l'on nommera *valide_login.php*

#### Travail à faire

Créer votre formulaire de connexion (form_login.html ou form_login.php)

### Page de traitement du formulaire de login

Le traitement doit effectuer la vérification des informations. Il doit rechercher dans la base de données si un utilisateur correspond au couple login/mot de passe.

Il faut donc effectuer une requête et regarder si cette requête retourne un résultat, et si ce dernier est unique.

Si la requête réussie alors, on sauvegarde une session pour mémoriser l'utilsateur. On peut ensuite le rediriger vers le back-office. Dans le cas contraire, on peut le rediriger vers la page de connexion.

On pourrait avoir le code suivant :

```php

<?php
session_start();
include('../includes/config.php');

$dblink = new PDO('mysql:host=' . BDD_SERVER . ';dbname=' . BDD_DATABASE . '; charset=utf8', BDD_USER,
    BDD_PASSWORD);
    
$password = sha1($_POST['password']);

$requete = 'SELECT * FROM utilisateurs WHERE utilisateur_login = "' . $_POST['login'].'" and utilisateur_mdp = "'.$password.'"';

$exe = $dblink->query($requete);
$nbreponses = $exe->rowCount();

if ($nbreponses == 1){
    //connexion OK
    $user = $exe->fetch(); //on récupérer les informations de l'utilisateur
    $_SESSION['utilisateur'] = $user['utilisateur_login'];
    header('Location: index.php'); //redirection vers l'accueil de l'administration
} else
{
    header('Location: form_login.html'); //redirection vers le formulaire
}
?>
```

#### Travail à faire

Mettre en place la partie traitement. Vous devez adapter le code ci-dessus en fonction de votre situation. N'oubliez pas comment fonctionne les sessions.

### Vérification sur les pages administrations

Il va maintenant falloir vérifier sur chacune des pages de notre back-office que l'utilisateur est connecté. Si c'est le cas, on le laissera visualiser la page, sinon, on le redirigera.

On pourrait écrire et dupliquer le code sur chacune des pages, mais cela ne serait pas très professionnel. On va donc écrire un fichier php qui va vérifier les éléments, et ce fichier sera inclu dans toutes les pages nécessitant une sécurité.

On pourrait donc avoir un fichier (verification_connexion.php) contenant le code ci-dessous:

```php
<?php
session_start();
if (isset($_SESSION['utilisateur']))
{
    $dblink = new PDO('mysql:host=' . BDD_SERVER . ';dbname=' . BDD_DATABASE . '; charset=utf8', BDD_USER,
        BDD_PASSWORD);
    $requete = 'SELECT * FROM utilisateurs WHERE utilisateur_login = "'.$_SESSION['utilisateur'].'"';
    $exeuser = $dblink->query($requete);
    $user = $exeuser->fetch();
    // l'utilisateur est connecté, et il existe dans la BDD, alors on récupérer ses informations dans une variable $user
} else {
    header('Location: form_login.html');
    //il n'est pas connecté, on redirige.
}
?>
```
On ajoutera ensuite, au tout début de chacun des fichiers `require 'verification_connexion.php';`

A noter qu'on a une variable $user qui contient les informations de l'utilisateur connecté. On peut donc l'utiliser dans nos pages.

#### Travail à faire.

Mettre en place cette vérification sur l'ensemble des pages du backoffice.

**Faire valider le bon fonctionnement**

## Améliorations possibles

Cette solution est basique. On pourrait l'améliorer en gérant des permissions par exemple pour distinguer un client d'un administrateur. On pourrait aussi gérer la création d'un compte, ou encore le mot de passe perdu, ...

De même dans la session, on éviterait de stocker l'Id de l'utilisateur ou son login. On préférerait générer une clé aléatoire et sauvegarder cette clé dans la session, et dans la base de données.


