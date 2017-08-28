---
title: M2202 : Séance 1
---

# Quelques rappels essentiels du PHP

La notation des variable se fait toujours avec un $ suivant d'un nom significatif. Un nom de variable doit commencer par une lettre et ne pas comporter de caractères spéciaux ou accentués.

# Exercices

Vous devez faire valider le fonctionnement de chacun des exercices.

## Revenons sur les formulaires
Ecrire un formulaire qui contient 3 champs (Nom, Ville, Film préféré), et qui récupère en GET les données pour les afficher dans un tableau HTML.

## Manipulons des tableaux
### Une boucle simple
Ecrire une boucle qui affiche les 20 premiers nombres impairs dans un tableau HTML

### Une boucle un peu moins simple
Ecrire une boucle qui parcours le tableau donné ci-dessous pour l’afficher dans un tableau HTML.

    <?php
    $tab = array (
        'film1' = > array (
            'titre' = > 'Docteur Strange',
            'realisateur' = > 'Scott Derrickson',
            'annee'= > 2016),
        'film2'= > array (
            'titre' = > 'Black Panther',
            'realisateur' = > 'Ryan Coogler',
            'annee'= > 2018),
        'film3 '' = > array (
            'titre' = > 'Thor : Ragnarok',
            'realisateur' = > 'Taika Waititi',
            'annee'= > 2017)
        );
        
### Fonctions et tableaux

Ecrire une fonction qui prend en paramètre un tableau avec clés associatives, qu’on ne connait pas a priori, et afficher se tableau dans un tableau HTML. Tester la fonction avec deux tableaux associatifs différents (nombre de ligne et de colonne).
