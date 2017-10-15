# M2202 et M2203 : DUTAF

Ce site est le support pour les modules M2202 (développement PHP) et M2203 (base de données). Ces modules ont pour exemple 
d'application le cas DUTAF.

Vous trouverez ici toutes les informations sur ces modules : le planning, les supports de cours, la notation, ...

## Objectifs

Mettre en œuvre une Solution PHP/MySQL pour répondre à un problème de gestion de base de données. Approfondir les connaissances en algorithmique et en PHP afin de pouvoir mettre en place un panier, gérer les sessions, ...

## Présentation de DUTAF

* La société Dutaf, qui vend des bandes dessinées, vous demande de créer son site Internet sur lequel ses clients pourront consulter le catalogue complet, et établir un panier en vue de réaliser une commande. Cette société appartient à M. Pastot. Son catalogue est composé de plus de 500 articles. 

* II désire pouvoir faire la mise à jour de ses produits lui-même (changer un prix, ajouter un article, effacer un article) sans avoir à faire appel à vos services. Pour cela, il vous demande de développer le site de telle manière qu’il y ait une section qui lui sera réservée et dans laquelle il pourra, via Internet et des pages web, venir faire ses modifications. 

* Un article est identifié par un code dans le catalogue, une nom, un descriptif, un prix de vente, une quantité disponible, un numéro de fournisseur, un nom de fournisseur, un téléphone de fournisseur, une ville de localisation du fournisseur. Remarque : un article du catalogue ne peut provenir que d'un seul fournisseur. 

* II existe une cinquantaine de fournisseurs. Sur le même principe que les articles, M. Pastot désire pouvoir faire ses propres changements dans la liste des fournisseurs. 

* M. Pastot se sert déjà un peu d’internet mais il ne connaît aucun logiciel de mise en page web et ne compte pas s'investir dans la création de page web. II ne connaît d'ailleurs pas plus les notions de base de données. 

* II désire aussi qu’un client puisse demander uniquement la liste des articles correspondant à son budget. Pour cela, il devra y avoir une section dans laquelle le client pourra entrer un prix maximum et par la suite consulter uniquement les articles correspondants à sa requête. 

## Version de démonstration de DUTAF

La démonstration est visible ici : 

[http://195.83.128.55/~dannebicque/dutaf/](http://195.83.128.55/~dannebicque/dutaf/)

Sur ce lien vous trouverez les fonctionnalités à mettre en place, ainsi que des éléments d'explication sur les différentes pages. Les critères de notation sont également explicités.


## Organisation des séances entre les modules M2202 et M2203

DUTAF est exploité sur les deux modules M2202 (Algorithmique et PHP) et M2203 (base de données).

Cette page présente l'organisation globale entre ces deux modules.


| Séance | Type  | Module | Objectifs                                         | Date(s) [^1]            |
| ------ | ----- | ------ | --------------------------------------------------| ----------------------- |
|    1   | TD1 | M2203 | [Cours sur les BDD et présentation DUTAF](M2203-seance-1.md) | 07/09/17, 8h00 |
|    2   | TD1 | M2202 | [Révision formulaire, boucles, ...](M2202-seance-1.md)  | 07/09/17, 9h30 |
|    3   | TD2 | M2203 | [Exercice Stages, Arboretum](M2203-seance-2.md)  | 08/09/17, 8h00 |
| 4 | TD3 | M2203 | [Exercice court métrage, mediatheque et ASAD](M2203-seance-3.md)  | 11/09/17, 11h00 |
| 5 | TD4 | M2203 | [Exercice requêtes Chenil](M2203-seance-4.md) | 13/09/17, 8h00 |
| 6 | TP1 | M2203 | [Analyse DUTAF](M2203-seance-5.md)  | 13 et 14/09/17 |
| 7 | TP2 | M2203 | [Mise en place structure](M2203-seance-6.md) | 15/09/17 |
| 8 | TD2 | M2202 | [Accès aux base de données](M2202-seance-2.md) | 18/09/17, 17h00 |
| 9 | TP1 | M2202 | [Accès aux base de données](M2202-seance-3.md)  | 19/09/17 |
| 10 | TD5 | M2203 | [Catalogue](M2203-seance-7.md)  | 26/09/17, 8h00 |
| 11 | TD6 | M2203 | [Recherche petit prix](M2203-seance-8.md) | 27/09/17, 11h00 |
| 12 | TP2 | M2202 | [Formatage et fonctions pratiques en PHP](M2202-seance-4.md) | 25 et 26/09/2017 |
| 13 | TD3 | M2202 | [Sessions et panier](M2202-seance-5.md) | 4/10/2017 |
| 14 | TP3 | M2202 | [Sessions et panier](M2202-seance-6.md) | |
| 15 | TP3 | M2203 | [Administration du back-office](M2203-seance-9.md)  | 9/10/17 |
| 16 | TP4 | M2203 | [Ajout d'un article](M2203-seance-10.md) | 15/10/17 |
| 17 | TD4 | M2202 | [Upload d’image et marquage de l’image](M2202-seance-7.md)| |
| 18 | TP4 | M2202 | [Upload d’image et marquage de l’image et modification](M2202-seance-8.md)| |
| 19 | TP5 | M2203 | [Suppresion d'un article](M2203-seance-11.md) | |
| 20 | TD5 | M2202 | [Sécurisation du back-office en PHP](M2202-seance-9.md)| |
| 21 | TP5 | M2202 | [Sécurisation du back-office en PHP](M2202-seance-10.md)| |
| 22 | TD6 | M2202 | [Export format text/csv](M2202-seance-11.md)| |
| 23 | TP6 | M2202 | [Export format text/csv](M2202-seance-12.md)| |
| 24 | TP7 | M2202 | [Finalisation DUTAF](M2202-seance-13.md)| |
| 25 | TP6 | M2203 | [Modification d'un article](M2203-seance-12.md) | |
| 26 | TD7 | M2203 | [Evaluation](M2203-seance-13.md) | |
| 27 | TD7 | M2202 | [Evaluation](M2202-seance-14.md)| |


[^1]: 2017/2018, A titre indicatif. Vérifier l'emploi du temps

## Notations

Plusieurs étapes intermédiaires feront l’objet d’une vérification afin de voir votre avancée. Vous veillerez à les respecter. Le respect de ces échéances entrera en compte dans la notation finale de DUTAF.

L’ensemble des points qui seront évalués sont indiqués dans le document. Ces différentes étapes composeront la note du module M2202 (PHP et algorithmique) et la note du module M2203 (Base de données). Chaque point est évalué selon la notation sur 3 points :

* 0 : rien n’est fait
* 1 : des éléments présents, mais non fonctionnel, ne respecte pas les consignes
* 2 : les consignes sont respectées
* 3 : les consignes sont respectées, mais vous avez apporté des éléments de personnalisation ou des fonctionnalités supplémentaires.

Si vous respectez l’ensemble de ces éléments vous obtiendrez donc une notation de ⅔ pour chacun des critères. Vous devez montrer votre capacité à aller plus loin que la consigne (mise en page de qualité, utilisation de fonctionnalités spécifiques, respect de l’ergonomie, …) afin d’obtenir l’ensemble des points sur chacun des critères.

## Contacts

David Annebicque (M2202) : david.annebicque [@] univ-reims.fr,  @DavidAnnebicque

Fabrice Meuzeret (M2203) : fabrice.meuzeret [@] univ-reims.fr
