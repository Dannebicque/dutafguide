# M2203 \| Séance 9 \| Administration \(gestion.php et bd\_gestion.php\) \(17 mars\)

correction video des 4 premieres pages \(index.html, listing.php,form-recherche.php, reponse-recherche.php\): xxxxxxxx

### séance du jour:

![Partie gestion BD](.gitbook/assets/dutaf3.png)

## exercice 1: Mettre en oeuvre la page admin.html en  la créant dans un sous-dossier "admin" de votre dossier "dutaf"

Protéger l'ensemble du dossier "admin" en ajoutant un fichier ".htaccess" et un fichier "htpasswd"

Pour crééer un fichier ".htaccess" :

Créez un nouveau fichier nommé ".htaccess", avec le point devant et sans extension, à l’aide d'un éditeur de texte, et coller ce qui suit en modifiant mmiXXXX par votre identifiant mmi :

```text
AuthUserFile /home/mmiXXX/public_html/dutaf/admin/htpasswd
AuthName "Acces securise a mon site Dutaf"
AuthType Basic
<LIMIT GET POST>
Require valid-user
</LIMIT>
```

Transférer le fichier ".htaccess" dans le répertoire admin de dutaf, ainsi que le fichier "htpasswd".

Dans le fichier "htpasswd" ajouter l'empreinte :`prof:$apr1$dJfZ1bRd$kKzpw.TAK9lSU99wOIp.Q.`

pour que les enseignants puissent venir consulter le back-office.

Pour générer un mot de passe, vous pouvez utiliser ce site web \( [http://aspirine.org/htpasswd.html](http://aspirine.org/htpasswd.html) \). Une fois que vous avez chiffré le mot de passe à l’aide de l’algorithme MD5, créez un autre fichier nommé htpasswd dans lequel vous collez la ligne complète.

votre fichier htpasswd doit ressembler à ça:

```text
monlogperso:bRd$K9lSU99wOkKzr1$dJfZ
prof:$apr1$dJfZ1bRd$kKzpw.TAK9lSU99wOIp.Q.
```

faites vérifier l'accès au backoffice par votre enseignant  TP.



## exercice 2: Mettre en oeuvre la page bd\_gestion.php en  la créant dans un sous-dossier "admin" de votre dossier "dutaf"

cette page html.php est très similaire à listing.php, partez donc d'une copie de cette page pour faire la page bd\_gestion.php.

## exercice 3: pour ceux qui auront de l'avance, mettez en forme l'ensemble des pages déjà créée avec du CSS.

## Rendu de la séance:

via moodle dans le module m2203, vous trouverez un dépot à faire jusqu'à 13h derniere limite. déposez un fichier texte GroupeNomPrenom.txt dans lequel, il y aura juste une ligne avec le lien vers votre URL de dutaf \(genre http://monIP/dutaf\)

