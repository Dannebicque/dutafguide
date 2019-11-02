# Séance 7 : Sécurisation du back-office en PHP

## Finaliser la mise en place d'un accès sécurisé à DUTAF

## Elements de correction sur la partie Panier

### Ajout du lien "ajouter au panier"

Dans le catalogue \(et/ou dans le résultat de la recherche\), il faut ajouter un bouton permettant d'ajouter un article dans le panier. On peut s'inspirer du code ci-dessous

```php
<a href="add_cart.php?numart='.$ligne['article_id'].'">Ajouter au panier</a>
```

Ce lien va transmettre l'id de l'article que l'on souhaite ajouter à la page de traitement add\_cart.php

### Traitement de l'ajout au panier

Le traitement pourrait ressembler à l'exemple ci-dessous. **Attention des lignes sont volontairement manquantes**

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

Dans l'exemple ci-dessous, on sauvegarde le panier sous la forme d'un tableau associatif, qui est lui même sauvegardé dans un tableau dont l'index est l'id du produit. Cette solution permet de faciliter la manipulation des articles, et donc éventuellement de contrôler rapidement \(en recherchant l'existence de l'Id d'un produit dans le panier\) la présence d'un produit. Cette solution simplifie le fait de pouvoir augmenter la quantité d'un produit. Exemple de modification permettant de gérer les quantités.

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

La session est un simple tableau. On a pris soin de sauvegarder toutes les informations d'un article dans la session \(ce que l'on ne ferait pas forcément en réalité\). On doit donc manipuler la session \(qui est une variable comme les autres\) pour afficher le panier. On pourrait obtenir le code suivant :

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

