# M2203 \| Séance 6 \| Mise en place structure

## 1\) Données du problème "Dutaf"

* La société Dutaf, qui est une librairie en ligne, vous demande de créer son site Internet sur lequel ses clients pourront consulter le catalogue complet. Cette société appartient à M. Levetar. Son catalogue est composé de plus de 1000 bandes dessinées.
* II désire pouvoir faire la mise à jour de ses produits lui-même \(changer un prix, ajouter une bande dessinées, effacer une bande dessinées\) sans avoir à faire appel à vos services. Pour cela, il vous demande de développer le site de telle manière qu’il y ait une section qui lui sera réservée et dans laquelle il pourra, via Internet et des pages web, venir faire ses modifications.
* Une bande dessinées est identifiée par un numéro dans le catalogue \(ISBN\), un titre, éventuellement une série, un prix de vente, un numéro d'éditeur et un identifiant d'auteur.
* Un éditeur est qualifié par un numéro, un nom, pays d'origine et un numéro de téléphone. Une bande dessinée n'est fournie que par un seul éditeur.
* Un auteur est défini par son nom, prénom, une nationalité et un âge. Une bande dessinée n'est écrite que par un seul auteur.
* II existe une vingtaine d'éditeurs. Cette liste est fixe et ne demande pas a être modifiable par M. Levetar.
* Sur le même principe que les bandes dessinées, M. Levetar désire pouvoir faire ses propres changements dans la liste des auteurs.
* M. Levetar se sert déjà un peu d’internet mais il ne connaît aucun logiciel de mise en page web et ne compte pas s'investir dans la création de page web. II ne connaît d'ailleurs pas plus les notons de base de données.
* II désire aussi qu’un client puisse demander uniquement la liste des bandes dessinées  correspondant à un auteur en particulier. Pour cela, il devra y avoir une section dans laquelle le client pourra entrer quelques lettres du nom ou du prénom de l'auteur et par la suite consulter uniquement les bandes dessinées correspondantes à sa requête.

### 2\) exercice 1: proposez le MCD et le MLD depuis le dictionnaire 

...

###  3\) exercice 2 : mise en œuvre de la base de données sous mySQL

1. En vous basant sur le MLD \(et le MCD\) , créez les  tables nécessaires dans PhpMyAdmin.
2. Récupérez le fichier [dutaf.xls](https://github.com/Dannebicque/dutafguide/tree/fbeb4cdebb2ab1a9902dc9e3b2f9761508d8dcd0/dutaf.xls) contenant les données nécessaires au TD pour les importer dans les

   tables. \(attention, n'utilisez pas l'importation automatique ! Passez par des fichiers CSV: 1 fichier CSV par table \)

### 4\) exercice 3 : analyse fonctionnelle et mise en place du site

Analysez le cahier des charges des fonctions demandées \(visu catalogue, formulaire...\) et retrouver ces fonctionnalités dans l'arborescence proposée ci-dessous. Imaginez pour chaque page le type de requete SQL nécessaire \(SELECT, UPDATE, DELETE,INSERT\)

Développer l'ensemble des pages \(au moins index.html et catalogue.php\) en mode statique \(mettre quelques exemples sur la page catalogue mais aucun code php pour l'instant biensur\) 

![](.gitbook/assets/dutaf%20%281%29.png)

### complément \(pour ceux qui ont du temps\):

Tester les requetes suivantes: 1. Afficher la liste des BD \(description, prix de vente\) par ordre décroissant du prix . 2. Afficher la liste des Bds de moins de 50 Euros. 3. Afficher la liste complète des Bds avec à chaque fois le dessinateur \(son nom\). 4. Supprimer la BD numéro 12. 5. Augmenter tous les prix de vente de 4%. 6. Retrouver les prix d’origine. 7. Afficher la description et le prix de la BD la moins cher. 8. Afficher la description et le prix de laBD la plus cher. 9. De la même façon, afficher le prix moyen des BD. 10. Afficher le prix moyen des Bd pour chacun des dessinateurs.

