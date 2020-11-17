# Séance 5 : Sessions et panier

{% hint style="danger" %}
A partir de cette séance, votre implication et votre participation dans le cours sera valorisée \(proposition de solution en PV pour les exercices, interactions sur la séance\).
{% endhint %}

Dans cette partie nous allons appliquer les sessions au cas DUTAF en créant un panier dans lequel un visiteur pourra sauvegarder les produits.

## Principe à mettre en place

Voici les étapes que nous allons suivre pour la mise en place de ce panier.

1. Ajout d'un bouton sur chaque article du catalogue \(et de la recherche\) pour permettre l'ajout au panier. Ce bouton sera un lien, qui contiendra l'ID de l'article que l'on souhaite ajouter au panier.
2. Ecrire le fichier de traitement, qui sauvegardera l'article ajouté dans le panier. On sauvegarder l'Id du produit, la quantité et le prix unitaire
3. Ecrire la page panier qui affichera le contenu du panier en effectuant le calcul du total par produit et le total complet du panier.

## Astuces

* Pour rappel, on peut générer un lien avec l'ID comme ci-dessous, si $article\_id contient l'ID de l'article.

```php
<a href="ajout_panier.php?id=<?php echo $article_id; ?>">Ajouter au panier</a>
```

* Pour récupérer les informations dans la page de traitement du produit, on pourrait écrire :

```php
$numarticle = $_GET['id'];

//Et pour récupérer les informations du produit concerné

$dblink = new PDO('mysql:host=' . BDD_SERVER . ';dbname=' . BDD_DATABASE . '; charset=utf8', BDD_USER, BDD_PASSWORD);
$requete = 'SELECT * FROM articles WHERE article_id = ' . $numarticle;
$exearticle = $dblink->query($requete);

$article = $exearticle->fetch(); //récupération du premier (et normalement unique, enregistrement)
```

* On peut considérer le panier comme un tableau où la clé serait l'Id du produit. On peut ensuite sauvegarder l'ensemble des éléments du produit \(nom, prix unitaire, quantité\), sous un tableau associatif.

```php
$panier = array(
  12 => array('designation' => 'ABC123', 'Prix_u'=> '12,34', 'Quantite' => 3), 
  ... //(les autres produits)
  );
// où 12  représente l'id du produit
```

## Améliorations à apporter.

* Si un utilisateur ajoute plusieurs fois un produit identique, il faut mettre à jour la quantité demandée dans la session.
* Il serait intéressant de pouvoir supprimer un produit présent dans le panier

