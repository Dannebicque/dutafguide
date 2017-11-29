[Retour à l'accueil](README.md)

# M2202 | Séance 11 | Export format text/csv

## Introduction

Ce TD/TP s’intéresse à la manipulation de fichier, de type texte. Nous nous focaliserons sur la manipulation de fichiers texte (txt) standard et des fichiers csv qui pourront par exemple être exploités dans un tableur de type excel.

Pour pouvoir manipuler les fichiers, vous devez vous assurer de mettre les droits en écriture et execution sur votre répertoire.

## Fichier texte

La manipulation d’un fichier comporte trois étapes :

1. Ouvrir le fichier (s’il existe)
2. Exploiter le fichier (lecture et/ou écriture) 
3. Fermer le fichier

Ce qui se traduit pour les étapes 1 et 3 par le code ci-dessous:

```php
<?php
// 1 : on ouvre le fichier
$monfichier = fopen('fichier.txt', 'r+');
// 2 : on fera ici nos opérations sur le fichier...

// 3 : quand on a fini de l'utiliser, on ferme le fichier
fclose($monfichier);
?>
```
Le second argument de la fonction fopen indique de quelle manière il faut ouvrir le fichier. Le tableau ci-dessous vous présente les différents mode dans lequel un fichier peut être ouvert.

| Mode | Explications |
|------|--------------|
|  r   | Ouvre le fichier en lecture seule. Cela signifie que vous pourrez, seulement lire le fichier. |
|  r+  | Ouvre le fichier en lecture et écriture. Vous pourrez non,seulement lire le fichier, mais aussi y écrire (on l’utilisera, assez souvent en pratique) |
|  a   | Ouvre le fichier en écriture seule. Mais il y a un avantage : si le fichier n’existe pas, il est automatiquement créé. |
|  a+  | Ouvre le fichier en lecture et écriture. Si le fichiers n’existe pas, il est créé automatiquement. Attention : le répertoire doit avoir un CHMOD à 777 dans ce cas ! A noter que si le fichier existe déjà, le texte sera rajouté à la fin. |

Si votre fichier.txt se trouve dans un répertoire, vous devez modifier la ligne 3 avec le bon chemin. Vous n’êtes absolument pas obligés de donner l’extension .txt à votre fichier. Vous pouvez l’appeler comme vous voulez : *exemple.cpt*, *exemple.num*, ou même *exemple* tout court. En pratique vous pouvez écrire n’importe quelle extension, mais pour pouvoir l’ouvrir par la suite il faut soit que l’extension n’existe pas (dans ce cas on ouvrir le fichier avec un éditeur de texte), ou alors que l’extension soit en fait un fichier texte (par exemple le html, un fichier ini ou encore du csv...).

Pour lire un fichier, il existe deux méthodes : soit ligne par ligne (fgets), soit caractère par caractère (fgetc).

### Lire

```php
<?php
$ligne = fgets($monfichier);
```

L’instruction ci-dessus permet donc de lire la première ligne de votre fichier (et uniquement celle-là). Pour parcourir tout le fichier, il faut faire une boucle qui va parcourir l’ensemble des lignes.

```php
<?php
// 1 : on ouvre le fichier
$monfichier = fopen('fichier.txt', 'r+');

// 2 : on fera ici nos opérations sur le fichier...
while(!feof($monfichier)) {
  $ligne = fgets($monfichier);
  //on fait quelque chose avec ligne
}

// 3 : quand on a fini de l'utiliser, on ferme le fichier
fclose($monfichier);
?>
```

Dans le code ci-dessus, la boucle while regarde si on est à la fin du fichier (*feof* permet de détecter la fin du fichier). La ligne fgets, va automatiquement lire les ligne de manière successive à chaque itération de la boucle. Un peu comme le fetch dans la base de données du TD précédent.

### Ecrire

Pour écrire il n’existe qu’une méthode : fputs.

```php
<?php
fputs($monfichier,"le texte à écrire");
```

L’ajout se fait là où se trouve le curseur : en fin de ligne si on à lu une ligne, aprés une caractére, si on a fait un fgetc.
Pour repositionner le curseur, on peut utiliser :

```php
<?php
fseek($monfichier,0);
```

Qui va replacer le curseur au caractère 0, c’est à dire au début du fichier.

## fichier CSV 

### Lire
La manipulation d’un fichier csv est très similaire à un fichier texte, en effet, techniquement un fichier csv est un fichier texte. Cependant, le format CSV étant pratique à manipuler (notamment car il peut être utilisé dans une base de données, dans un tableur, ...), php propose de nombreuses fonctionnalités pour le manipuler.

```php
<?php
$fichier = fopen("fichier.csv", "a+"); 

while($ligne=fgetcsv($fichier,1024,';')) {
  $champs = count($ligne);//nombre de champ dans la  → ligne en question

  //affichage de chaque champ de la ligne en  → question
  for($i=0; $i<$champs; $i ++) {
    echo $ligne[$i] . "<br />";
  }
}  

fclose($fichier);
?>
```

Le code ci-dessous montre comment lire un fichier csv avec la méthode fgetcsv. Cette méthode prend 3 arguments :
* la variable de fichier
* la taille d’une ligne (souvent 1024)
* le caractère de séparation (traditionnellement ; ou ,).

Lors de la lecture d’une ligne, la fonction fgetcsv renvoi un tableau, avec dans chaque case les "parties" entre les séparateurs. C’est comme cela que fonctionne votre import dans une base de données.

### Ecrire

```php
<?php
  $ligne = 1; // compteur de ligne $fichier = fopen("fichier.csv", "a+");
  $tableau = array('a','b'); 
  
  fputcsv($fichier, $tableau, ";");
  
  fclose($fichier);
?>
```

L'écrirure se fait par l’intermédiaire de la fonction fputcsv, qui prend 3 paramètres :
* le fichier
* un tableau de données
* le séparateur.

Cette fonction va transformer le tableau en une ligne de texte, où les éléments seront séparés par le séparateur.

## Exercices

### Lire un fichier texte

* Récupérer le fichier [exemple.txt](m2202/exemple.txt)
* le mettre dans votre répertoire, vérifier les droits.
* Ecrire un fichier qui va récupérer et afficher le contenu de ce fichier.

### Ecrire un fichier texte

* Ecrire un fichier php qui permet de générer un fichier txt contenant le texte de votre choix

### Lire un fichier csv
* Récupérer le fichier [comics.csv](m2202/comics.csv)
* le mettre dans votre répertoire, vérifier les droits.
* Ecrire un fichier qui va récupérer et afficher le contenu de ce fichier, sous forme d'un tableau HTML.

### Ecrire un fichier csv
* Ecrire un fichier csv, séparateur ”;” qui va contenir les données d'une table de votre base de données
* Tester le fichier généré dans un tableur.

