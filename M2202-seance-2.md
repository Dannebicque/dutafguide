[Retour à l'accueil](README.md)

# M2202 | Séance 2 | Accès aux base de données

## Introduction / Rappels

Une base de données permet de stocker des données de manière durable, contrairement à une session ou un cookie qui ont une durée de vie. Une base de données se compose d’une ou plusieurs tables, qui peuvent, ou non, avoir des liens entre-elles. Dans le cadre de la formation MMI nous utilisons une base de données de type MySQL [relire le cours de M2203](M2203-seance-1.md).

Ce TD vise à vous expliquer comment se connecter à une base de données, comment récupèrer des données, comment en  ajouter, en modifier ou en supprimer, en d’autres termes, comme exécuter les requêtes MySQL grâce au PHP.

> Ces actions récurrentes (lire, ajouter, modifier, supprimer) lors de l'utilisation d'une base de données forment ce qu'on nomme généralement le **CRUD** (*Create, Read, Update, Delete*). Généralement chaque table qui compose la base de données possède son CRUD.

Il existe plusieurs manière de se connecter à une base de données en PHP. Il y a des méthodes spécifiques en fonction du type de base de données utilisée (mysql ou mysqli par exemple pour une base de données MySQL). Mais il y a aussi des méthodes plus génériques. Nous utiliserons dans le cadre de ce semestre la méthode PDO : *"PHP Data Object"*. Cette méthode utilise le concept de programmation orienté objet que vous étudierez durant le semestre 3. Il est donc normal que vous ne compreniez pas précisément la notation "->". Sachez simplement qu’elle permet d’utiliser des fonctionnalités associées à la connexion à votre base de données.

## Se connecter à une base de données
Pour pouvoir se connecter à une base de données, quelque soit la méthode utilisée, vous devez disposer des 4 informations suivantes :
* User : Login de votre base de données (*mmi17xxx*)
* Password : Mot de passe pour accéder à votre base de données (4 caractères en MMI)
* Serveur : Adresse où se trouve votre base de données (localhost en général)
* Nom de la base de données : Le nom de la base de données. (*basemmi17xxx* en MMI)

Dans le cadre du DUT MMI le login et le mot de passe de la base de données sont identiques à vos accès pour votre FTP. 

Le serveur permet de donner l’adresse de votre base de données, très souvent, la base de données étant sur le même serveur que votre serveur web, on indique *"localhost"*. Dans
certain cas, on pourra indiquer une URL ou une adresse IP.

Le code ci-dessous correspond à la phrase de connexion à une base de données de type MySQL. Cette instruction comprend 3 éléments. La *phrase de connexion* `mysql:host=serveur;dbname=nom_de_la_BDD;charset=utf8` (propre à chaque système de base de données), un *login* et un *mot de passe*.

{% highlight php linenos %}
<?php
$bdd = new PDO('mysql:host=serveur;dbname=nom_de_la_BDD;
charset=utf8', 'User', 'Password');
{% endhighlight %}

Il faut bien sûr remplacer dans l’instruction précédente le "serveur", le "nom de la BDD", le "User" et le "Password" par vos informations personnelles. *Il est important de ne mettre aucun espace dans la phrase de connexion.*

## PHP: Définition de constantes

La connexion à la base de données est potentiellement nécessaire sur beaucoup de fichiers de notre projet. En effet, il faut effectuer la connexion sur chaque nouvelle page où cela est nécessaire. La connexion n’est pas permanente.

Il faudra donc écrire l’instruction ci-dessus autant de fois que nécessaire, et en cas de changement de base de données, il faudra modifier chacune des connexions avec les nouveaux paramètres. Ce qui va à l’encontre de la logique de programmation et de non duplication des éléments.

Une solution consiste donc à définir des constantes PHP. Une constante est une variable particulière qui ne peut pas varier pendant l’exécution du script PHP. L’intérêt va donc être de définir une constante pour chacun des quatre paramètres et ensuite utiliser cette constante quand cela sera nécessaire. De cette manière, il n’y aura qu’un seul endroit ou modifier les informations. 

La syntaxe est la suivante :

{% highlight php linenos %}
<?php
define('NOM_CONSTANTE', 'valeur');
{% endhighlight %}

L’usage veut que le nom d’une constante soit en majuscule. **A noter qu’une constante ne commence pas par un $**. 

Dans notre cas, un fichier type de constante pourrait être :

{% highlight php linenos %}
<?php
define('BDD_LOGIN', 'monlogin');
define('BDD_PASSWORD', 'monpassword');
define('BDD_SERVER', 'localhost');
define('BDD_DATABASE', 'basededonnees');
{% endhighlight %}

Ces éléments sont sauvegardés dans un fichier que l’on peut appeler *"config.inc.php"*. Ce fichier contiendra toutes nos constantes. Il faut ensuite **inclure** ce fichier à chaque fois que l’on va faire une connexion à notre base de données. 

Ce qui pourrait donner le code suivant :

{% highlight php linenos %}
...
<?php
include('config.inc.php');

$bdd = new PDO('mysql:host='.BDD_SERVER.';dbname='.BDD_DATABASE.';charset=utf8', BDD_LOGIN, BDD_PASSWORD);
{% endhighlight %}

## Récupérer des données

### Exécuter une requête

Le code ci-dessous va permettre d'écrire une requête en MySQL et de l'éxécuter afin d'intéragir avec le serveur de base de données.

{% highlight php linenos %}
...
<?php
include('config.inc.php');

$bdd = new PDO('mysql:host='.BDD_SERVER.';dbname='.BDD_DATABASE.';charset=utf8', BDD_LOGIN, BDD_PASSWORD);

$requete = 'SELECT * FROM table';
$exe = $bdd->query($requete);
{% endhighlight %}

Explication des lignes :
1. Cette ligne permet d’écrire la requête au format MySQL. Une requête est avant tout du texte ! Il est donc possible de construire cette phrase en concaténant des variables.

2. Cette ligne exécute la requête précédemment écrite. C’est à ce moment là que le résultat de la requête est récupéré dans la variable $exe.

Il n’est techniquement pas nécessaire de passer par une variable intermédiaire pour écrire la requête SQL (la variable $requete). **Cependant vous utiliserez TOUJOURS cette solution durant ce semestre**. Il sera ainsi beaucoup plus facile de débuguer et comprendre ce qui se passe en affichant, dans le navigateur, la requête.

### Afficher le résultat d’une requête

La variable $exe contient donc le résultat de notre requête. 

Ce résultat, si la requête a réussi, est un tableau composé des lignes de la base de données correspondant à la selection. Il faut donc parcourir ce tableau afin d’afficher chacune des lignes. Il y a deux méthodes pour réaliser cela :

* Compter le nombre total d’élément dans le tableau, et faire une boucle "for"
* Parcourir le tableau jusqu’à ce qu’il n’y ait plus d’éléments.

#### Parcourir avec une boucle for

{% highlight php linenos %}

<?php
include('config.inc.php');

$bdd = new PDO('mysql:host='.BDD_SERVER.';dbname='.BDD_DATABASE.';charset=utf8', BDD_LOGIN, BDD_PASSWORD);

$requete = 'SELECT * FROM table';
$exe = $db->query($requete);

$nbreponses = $exe->rowCount();

for($i=0; $i<$nbresponses; $i++)
{
    $ligne = $exe->fetch();
    echo '<p>'.$ligne['champ1'].' '.$ligne['champ2'].'</p>';
}
{% endhighlight %}

Explication des lignes
* ligne 1 : Ecriture de notre requête dans une variable ´
* ligne 2 : Exécution de la requête pour récupérer les réponses
* ligne 4 : Comptage du nombre de réponse de la requête. On pourrait utiliser cette variable pour afficher le nombre de réponse à l’utilisateur.
* ligne 6 : Déclaration d’une boucle for qui va permettre de parcourir toutes les réponses
* ligne 8 : Cette ligne permet de récupérer une ligne parmi l’ensemble des lignes du tableau. "fetch" signifiant "va chercher". A chaque itération de la boucle, on va chercher la ligne suivante dans le tableau des réponses. La notation "->" est une notation objet. Vous la comprendrez mieux lors du prochain semestre.
* ligne 9 : On affiche les données. A noter que la variable $ligne est un tableau associatif dont la clé est le nom du champ de votre table.

#### Parcourir avec une boucle while

{% highlight php linenos %}
<?php
include('config.inc.php');

$bdd = new PDO('mysql:host='.BDD_SERVER.';dbname='.BDD_DATABASE.';charset=utf8', BDD_LOGIN, BDD_PASSWORD);

$requete = 'SELECT * FROM table';
$exe = $db->query($requete);

while($ligne = $exe->fetch())
{
    echo '<p>'.$ligne['champ1'].' '.$ligne['champ2'].'</p>';
}
{% endhighlight %}

Explication des lignes :

* ligne 1 : Ecriture de notre requête dans une variable ´
* ligne 2 : Exécution de la requête pour récupérer les réponses
* ligne 4 :Déclaration d’une boucle while. Cette boucle va s’exécuter tant qu’il y a des valeurs dans le tableau $exe, tant que le fetch arrive à aller chercher une ligne.
* ligne 6 : On affiche les données. A noter que la variable $ligne est un tableau associatif dont la clé est le nom du champ de votre table.

### Les erreurs

Une erreur classique, que vous rencontrerez ressemblera à :

```
Fatal error: Call to a member function fetch() on a non-object in C:\wamp\www\tests\index.php on line xx
```
Cette erreur apparait sur la ligne du fetch, mais en fait elle signifie que la ligne récupérée (quelque soit la méthode utilisée) est vide (Null). La cause de cela est quasiment toujours le fait que votre requête comporte une erreur et qu’elle renvoie un résultat vide.

Affichez donc votre requête grâce à :

{% highlight php linenos %}
<?php
echo $req;
{% endhighlight %}

Copier/coller la réponse dans phpmyadmin, onglet "SQL" afin de tester la requête et obtenir un message d’erreur plus précis.

## Exercices