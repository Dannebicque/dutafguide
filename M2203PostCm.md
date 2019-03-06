[Retour à l'accueil](README.md)

# M2203 | exo post CM | Analyse DUTAF et Mise en place de la Bd

#### Objectif :
Mettre en œuvre une Solution PHP/MySQL pour répondre à un problème de gestion de base de données.

#### document :
support du cours [cm2.pdf](cm2.pdf).

#### Exposé du sujet :
• La société Dutaf, qui vend des articles en tout genre, vous demande de créer son site Internet sur lequel ses
clients pourront consulter le catalogue complet. Cette société appartient à M. Pastot. Son catalogue est
composé de plus de 500 articles.

• II désire pouvoir faire la mise à jour de ses produits lui-même (changer un prix, ajouter un article, effacer un
article) sans avoir à faire appel à vos services. Pour cela, il vous demande de développer le site de telle manière
qu’il y ait une section qui lui sera réservée et dans laquelle il pourra, via Internet et des pages web, venir faire
ses modifications.

• Un article est identifié par un numéro dans le catalogue, une désignation, un descriptif, un prix de vente, une
quantité disponible, un numéro de fournisseur, un nom de fournisseur, un téléphone de fournisseur, une ville
de localisation du fournisseur. Remarque : un artcle du catalogue ne peut provenir que d'un seul fournisseur.

• II existe une cinquantaine de fournisseurs. Sur le même principe que les articles, M. Pastot désire pouvoir
faire ses propres changements dans la liste des fournisseurs.

• M. Pastot se sert déjà un peu d’internet mais il ne connaît aucun logiciel de mise en page web et ne compte
pas s'investir dans la création de page web. II ne connaît d'ailleurs pas plus les notons de base de données.

• II désire aussi qu’un client puisse demander uniquement la liste des articles correspondant à son budget. Pour
cela, il devra y avoir une section dans laquelle le client pourra entrer un prix maximum et par la suite consulter
uniquement les articles correspondants à sa requête.

#### Premier exercice : analyse SGBDR (correction)
MLD: 

articles(**art_id**, art_design, art_descript, art_prix, art_qte, _four_id )

fournisseurs(**four_id**, four_nom, four_ville, four_tel )

#### Deuxième exercice : mise en œuvre de la base de données sous mySQL
1. En vous basant sur l'analyse, créez les 2 tables dans PhpMyAdmin.
2. Récupérez le fichier [dutaf.xls](dutaf.xls) contenant les données nécessaires au TD pour les importer dans les
tables. (attention, n'utilisez pas l'importation automatique ! Passez par des fichiers CSV)
 Compter les articles pour chacun des fournisseurs.

#### Troisieme exercice : analyse fonctionnelle et mise en place du site 
Analysez le cahier des charges des fonctions demandées (visu catalogue, formulaire...) et retrouver ces
fonctionnalités dans l'arborescence proposée.
développer l'ensemble des pages en mode statique (mettre quelques exemples sur la page catalogue mais aucun code php pour l'instant biensur)
![GitHub Logo](/plan2.jpg)



#### complément (pour ceux qui ont du temps):
Tester les requetes suivantes:
1. Afficher la liste des articles (description, prix de vente) par ordre décroissant du prix .
2. Afficher la liste des articles de moins de 50 Euros.
3. Afficher la liste complète des artcles avec à chaque fois la provenance (le fournisseur).
4. Supprimer l’article numéro 12.
5. Augmenter tous les prix de vente de 4%.
6. Retrouver les prix d’origine.
7. Afficher la description et le prix de l’article le moins cher.
8. Afficher la description et le prix de l'article le plus cher.
9. De la même façon, afficher le prix moyen des articles.
10. Afficher le prix moyen des articles pour chacun des fournisseurs.
