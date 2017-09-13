[Retour à l'accueil](README.md)

# M2202 | Séance 3 (TP) | Accès aux base de données

## Execution de requètes "complexes"

On souhaite filtrer la liste des comics en fonction du prix.

1. Ecrire la requête qui permet d'obtenir tous les comics dont le prix est inférieur à 17 €. Tester cette requête dans PhpMyAdmin
2. Créer une page qui va afficher le résultat de cette requête. On pourra fortement s'inspirer de la page catalogue du TD2.

##  Insérer des données dans une table

L'insertion de données dans une table passe par une requête SQL de type :

    INSERT INTO table (liste des champs) VALUES (valeur des champs)
    
    
**L'ordre des champs doit être le même que l'ordre des valeurs**. On ne précise pas les champs de type auto incrémenté, car ils sont gérés automatiquement par la base de données.

### Exercice

Ecire une requête qui va venir ajouter une donnée dans la table comics.

Le code pourrait ressembler à :

 ````php
 <?php
 include('config.inc.php');
 $bdd = new PDO('mysql:host='.BDD_SERVEUR.';dbname='.BDD_BDD.';charset=utf8', BDD_USER, BDD_PASS);
 
 $req = 'INSERT INTO (titre, collection, nbpages, prix) VALUES ("Titre de test", "Collection de test", "12", "33.45")';
 $exe = $bdd->query($req);
 ````
 
 Comme pour une requête SELECT, on procéde de manière identique
 
 1. Import des paramêtres de connexion,
 2. Connexion à la base de données
 3. Préparation de la requête dans une variable ($req)
 4. Execution de la requête.
 
 L'execution vient ajouter les éléments dans la base de données.
 
 Cet exemple va ajouter une ligne contenant les données écrites dans la requête. Si on execute plusieurs fois ce script, on va obtenir plusieurs lignes identiques car les données sont définies et non dynamiques.
 
Afin de rendre cette requête dynamique les valeurs des champs proviennent généralement d'éléments issus de l’utilisateur (remplissant d'un formulaire, choix d'article dans un panier, ...), ou de données calculées par le site web (nombre de clics par exemple).

Il faut donc pouvoir construire une requête qui va comporter des variables PHP comme valeur. Cela se fait très classiquement puisque la requête est en fait une chîne de caractère. Il faut donc concaténer les variables PHP aureste de la chaîne, comme dans l’exemple ci-dessous :

````php
<?php
$req = 'INSERT INTO table (nom_champ1, nom_champ2) VALUES ("'.$champ1.'","'.$_GET['champ2'].'")';
````

Il faut noter dans cette expression le fait que les valeurs soient encadrées par des " ", ceci est obligatoire dans le cas de champs texte. Ne pas les mettre provoque une erreur. Pour des raisons pratiques d'écriture on utilisera toujours les simples quotes ' ', pour encadrer cette chaîne. L'exécution de cette requête est effectuée avec la méthode query comme précédemment.

On prend le soin de stocker le résultat de l’exécution dans une variable afin de pouvoir contrôler la bonne exécution de la requête.

### Exercices

1. Tester une requête d’insert pour la table comics
2. Ecrire un formulaire qui permet la saisie des données
3. Ecrire la page de traitement qui permette l’insertion des données du formulaire dans la base de données.
