# M2203 : Base de données

Ce site est le support pour les modules M2202 \(développement PHP\) et M2203 \(base de données\). Ces modules ont pour exemple d'application le cas DUTAF.

Vous trouverez ici toutes les informations sur ces modules : le planning, les supports de cours, la notation, ...

## Objectifs

Mettre en œuvre une Solution PHP/MySQL pour répondre à un problème de gestion de base de données. Approfondir les connaissances en algorithmique et en PHP afin de pouvoir mettre en place un panier, gérer les sessions, ...

## Présentation de DUTAF

* La société Dutaf, qui vend des bandes dessinées, vous demande de créer son site Internet sur lequel ses clients pourront consulter le catalogue complet, et établir un panier en vue de réaliser une commande. Cette société appartient à M. Pastot. Son catalogue est composé de plus de 500 articles.
* II désire pouvoir faire la mise à jour de ses produits lui-même \(changer un prix, ajouter un article, effacer un article\) sans avoir à faire appel à vos services. Pour cela, il vous demande de développer le site de telle manière qu’il y ait une section qui lui sera réservée et dans laquelle il pourra, via Internet et des pages web, venir faire ses modifications.
* Un article est identifié par un code dans le catalogue, une nom, un descriptif, un prix de vente, une quantité disponible, un numéro de fournisseur, un nom de fournisseur, un téléphone de fournisseur, une ville de localisation du fournisseur. Remarque : un article du catalogue ne peut provenir que d'un seul fournisseur.
* II existe une cinquantaine de fournisseurs. Sur le même principe que les articles, M. Pastot désire pouvoir faire ses propres changements dans la liste des fournisseurs.
* M. Pastot se sert déjà un peu d’internet mais il ne connaît aucun logiciel de mise en page web et ne compte pas s'investir dans la création de page web. II ne connaît d'ailleurs pas plus les notions de base de données.
* II désire aussi qu’un client puisse demander uniquement la liste des articles correspondant à son budget. Pour cela, il devra y avoir une section dans laquelle le client pourra entrer un prix maximum et par la suite consulter uniquement les articles correspondants à sa requête.

## Version de démonstration de DUTAF

La démonstration est visible ici :

[http://195.83.128.55/~dannebicque/dutaf/](http://195.83.128.55/~dannebicque/dutaf/)

Sur ce lien vous trouverez les fonctionnalités à mettre en place, ainsi que des éléments d'explication sur les différentes pages. Les critères de notation sont également explicités.

## Organisation des séances entre les modules M2202 et M2203

DUTAF est exploité sur les deux modules M2202 \(Algorithmique et PHP\) et M2203 \(base de données\).

Cette page présente l'organisation globale entre ces deux modules.

### M2203 \(Base de données\)

| Séance | Type | Module | Objectifs | Date\(s\)    |
| :--- | :--- | :--- | :--- | :--- |
| 1 | CM1 | M2203 | [Cours sur les BDD et présentation DUTAF](m2203-seance-1.md) | mars |
| 2 | seance 2 | M2203 | [Exercice Stages, Arboretum](m2203-seance-2.md) | mars |
| 3 | seance 3 | M2203 | [Exercice court métrage, mediatheque et ASAD](m2203-seance-3.md) | mars |
| 4 | seance 4 | M2203 | [Presentation SQL](m2203-seance-1bis.md) | avril |
| 5 | seance 5 | M2203 | [Exercice requêtes Chenil](m2203-seance-4.md) | avril |
| 6 | CM2 | M2203 | [Analyse DUTAF et mise en oeuvre de la Bd](m2203-seance-5.md) | avril |
| 7 | séance 7 | M2203 | [Mise en oeuvre du CM](m2203postcm.md) | avril |
| 8 | séance 8 | M2203 | [Catalogue](m2203-seance-7.md) | avril |
| 9 | séance 9 | M2203 | [Recherche petit prix](m2203-seance-8.md) | mai |
| 10 | séance 10 | M2203 | [Administration du back-office](m2203-seance-9.md) | mai |
| 11 | séance 11 | M2203 | [Ajout d'un article](m2203-seance-10.md) | mai |
| 12 | séance 12 | M2203 | [Suppresion d'un article](m2203-seance-11.md) | mai |
| 13 | séance 13 | M2203 | [Modification d'un article](m2203-seance-12.md) | mai |
| 14 | séance 14 | M2203 | [Evaluation](m2203-seance-13.md) | juin |

### M2202 \(PHP\)

| Séance | Type | Module | Objectifs | Date\(s\) |
| :--- | :--- | :--- | :--- | :--- |
| 1 | TD | M2202 | [Révisions]() | 5/11/2018 |
| 2 | TP | M2202 | [Révisions BDD]() | 5/11/2018 |
| 3 | TD | M2202 | [Formatage et fonctions pratiques en PHP]() | 12/11/2018 |
| 4 | TP | M2202 | [Sessions et panier]() | 12/11/2018 |
| 5 | TD | M2202 | [Sessions et panier]() | 19/11/2018 |
| 6 | TP | M2202 | [Sécurisation du back-office en PHP]() | 21/11/2018 |
| 7 | TD | M2202 | [Sécurisation du back-office en PHP]() | 27/11/2018 |
| 8 | TP | M2202 | [Manipulation d'images]() | 28/11/2018 |
| 9 | TD | M2202 | [Manipulation d'images]() | 3/12/2018 |
| 10 | TP | M2202 | [Export format text/csv]() | 3/12/2018 |
| 11 | TD | M2202 | [Export format text/csv]() | 12/12/2018 |
| 12 | TP | M2202 | [Finalisation]() | 12/12/2018 |
| 13 | TP | M2202 | [TP Noté]() | 18/12/2018 |
| 14 | TD | M2202 | [Evaluation]() | 19/12/2018 |

## Notations

### Partie M2203

La notation de la partie DUTAF se décompose de la manière suivante:

* Panier \(4 points pour le respect des consignes suivantes\)
  * Possibilité d'ajouter un produit depuis le catalogue
  * Possibilité d'ajouter plusieurs produits identiques
  * Affichage d'un panier correctement mis en page.
  * 3 points supplémentaires pour les fonctionnalités supplémentaires pertinentes
* Sécurisation du back-office \(3 points pour le respect des consignes suivantes\)
  * Formulaire de connexion
  * Sécurisation de toutes les pages concernées
  * 2 points supplémentaires pour les fonctionnalités supplémentaires pertinentes
* Upload et marquage d'image \(5 points\)
  * Upload d'une image lors de la création ou de la modification d'un article
  * Affichage de l'image marquée dans le catalogue
* Export CSV \(3 points\)
  * Export de tout le catalogue dans un fichier CSV depuis le back-office

## Contacts

David Annebicque \(M2202\) : david.annebicque \[@\] univ-reims.fr, @DavidAnnebicque Brahim Boudiaf \(M2202\) : brahim.boudiaf \[@\] univ-reims.fr

Fabrice Meuzeret \(M2203\) : fabrice.meuzeret \[@\] univ-reims.fr

