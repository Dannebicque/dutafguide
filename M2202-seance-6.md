[Retour à l'accueil](README.md)

# M2202 | Séance 6 (TP) | Sessions et panier

Dans cette partie nous allons appliquer les sessions au cas DUTAF en créant un panier dans lequel un visiteur pourra sauvegarder les produits.

## Principe à mettre en place

Voici les étapes que nous allons suivre pour la mise en place de ce panier.

1. Ajout d'un bouton sur chaque article du catalogue (et de la recherche) pour permettre l'ajout au panier. Ce bouton sera un lien, qui contiendra l'ID de l'article que l'on souhaite ajouter au panier.
2. Ecrire le fichier de traitement, qui sauvegardera l'article ajouté dans le panier. On sauvegarder l'Id du produit, la quantité et le prix unitaire
3. Ecrire la page panier qui affichera le contenu du panier en effectuant le calcul du total par produit et le total complet du panier.

## Améliorations a apporter.

* Si un utilisateur ajoute plusieurs fois un produit identique, il faut mettre à jour la quantité demandée dans la session.
* Il serait intéressant de pouvoir supprimer un produit présent dans le panier
