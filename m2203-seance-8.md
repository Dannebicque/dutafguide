# M2203 \| Séance 8 \| Recherche par auteur

![Partie recherche](.gitbook/assets/dutaf2.png)

## Développement du formulaire "petit budget" \(page form\_recherche.php\)

Développez la page `form_recherche.php`. Attention à bien nommer le champs du formulaire `texte` comme indiqué sur l'arbre de navigation. De plus, bien faire pointer la validation du formulaire vers la page `reponse_recherche.php` ainsi que de préciser dans les paramètres du formulaire que les données seront transmises dans l'URL \(méthode **GET**\)

## Développement de la page reponse\_recherche.php.

Pour la page reponse\_recherche.php, reprendre la mise en page et le php de base déjà vus dans de votre page catalogue.php

Modifier la requête SQL de cette page pour afficher uniquement les articles correspondants au caractères d'un nom ou d'un prénom d'un auteur existant \(donc en reprenant le contenu du paramètre passé dans l'URL. rappel: on récupère les paramètres passés dans l'url via `$_GET['nom_du_parametre']` \)

{% hint style="info" %}
On effectue ici une recherche, dite "**selon un modèle**", c'est à dire qu'on ne recherche pas de manière exacte ce qu'a saisie l'utilisateur, mais un enregistrement qui contient les caractères demandés. Par exemple :

Ma base contient les 4 noms suivants : Léon, Odette, Vivien, Etienne.

L'utilisateur saisie "ien"

Vous devez afficher : Viv**ien** et Et**ien**ne comme réponse

pour cela regardez du côté de l'expression "... LIKE '%xxx% ..." 
{% endhint %}

