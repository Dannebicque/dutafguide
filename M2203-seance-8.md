[Retour à l'accueil](README.md)

# M2203 | Séance 8 | Recherche petit prix
![GitHub Logo](/seance09.jpg)
#### 1) développement du formulaire "petit budget" (page form_budget.html)
 développez la page qbudget.html. Attention à bien nommer le champs du formulaire "prixmax" comme indiqué sur l'arbre de navigation. De plus, bien faire 'pointer' la validation du formulaire vers la page 'budget_art.php' ainsi que de préciser dans les parametres du formulaire que les données seront transmises dans l'URL (method GET)

#### 2) développement de la page budget_art.php.
Pour la page budget_art.php, reprendre la mise en page et le php de base déjà vus dans de votre page catalogue.php

Modifier la requete SQL de cette page pour afficher uniquement les articles correspondants au budget de l'internaute (donc en reprenant le contenu du parametre passé dans l'URL. rappel: on récupére les parametres passés dans l'url via $_GET['nom_du_parametre'] )
