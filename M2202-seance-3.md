[Retour à l'accueil](README.md)

# M2202 | Séance 3 | Formatage et fonctions pratiques en PHP

PHP propose de nombreuses fonctions qui permettent d'effectuer des tâches récurrentes dans la mise en forme de donnes. On trouve par exemple des fonctions capables de transformer des minuscules en majuscules et réciproquement, de formatter des nombres ou encore manipuler des dates.

Il existe de très nombreuses fonctions que vous pouvez retrouver sur la [documentation officielle de PHP](https://php.net)

## Manipulation des textes

* strtolower($chaine) : [http://php.net/manual/fr/function.strtolower.php](http://php.net/manual/fr/function.strtolower.php). Permet de convertir $chaine en minusucule.
* strtoupper($chaine) : [http://php.net/manual/fr/function.strtoupper.php](http://php.net/manual/fr/function.strtoupper.php). Permet de convertir $chaine en majuscule
* strlen($chaine) : [http://php.net/manual/fr/function.strlen.php](http://php.net/manual/fr/function.strlen.php). Permet de connaître la longueur de $chaine


## Manipulation des nombres

* number_format($nombre) : [http://php.net/manual/fr/function.number-format.php](http://php.net/manual/fr/function.number-format.php). Permet de formatter $nombre (nombre de chiffre après la virgule, séparateur de millier, de décimal, ...)



## Manipulation des dates

Il est d'usage en informatique de manipuler le $timestamp. Le timestamp (unix) désigne le nombre de secondes écoulées depuis le 1er janvier 1970 à minuit UTC précise. Utiliser un timestamp est plus simple que de manipuler une date formattée, notamment pour effectuer des opérations (différence entre deux dates).

* date(-format-, $timestamp) : [http://php.net/manual/fr/function.date.php](http://php.net/manual/fr/function.date.php). Permet de formater une date. Si on ne précise pas de valeur de date (le second argument $timestamp), alors le résultat sera la date du jour formattée. 

* strtotime() : [http://php.net/manual/fr/function.strtotime.php](http://php.net/manual/fr/function.strtotime.php).

````php
// La variable $today sera égale au timestamp d'aujourd'hui 0h00
$today = strtotime ('today');
// La variable $tomorrow sera égale au timestamp de demain 19h00
$tomorrow = strtotime ('tomorrow 19:00');
// La variable $special sera égale au timestamp du {{date-|1 janvier 1970}} plus deux jours et trois heures
$special = strtotime ('01/01/1970 +2 days +3 hours');
````

## Exercices

### Tests

* Tester chacune des fonctions décrites sur des exemples de votre choix. Faire valider l'exercice.

* Manipulation de dates: 

  * Afficher la date au format français ainsi que l'heure avec les minutes et les secondes, exemple: Nous sommes le 25/09/2017, Il est 07:52:05.
  * Afficher le timestamp de votre date de naissance, exemple : je suis né(e) le 12/10/1990, soit 660783600
  * Ecrire une fonction qui permet d'afficher la date au format français : Exemple : Nous sommes le lundi 25 septembre 2017.


### DUTAF

* Intégrer au moins une fonction de formattage de nombre dans votre catalogue DUTAF
* Intégrer au moins une fonction de formattage de texte dans votre catalogue DUTAF
* Intégrer au moins une fonction de formattage de date dans votre catalogue DUTAF
