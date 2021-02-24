# M2203 \| Séance 9 \| Administration \(gestion.php et bd\_gestion.php\) \(fin fevrier\)

## correction video des 4 premieres pages des séances précédentes

video 1 \(index.html et listing.php\):  [https://youtu.be/BXjfq0-k0Y4](https://youtu.be/BXjfq0-k0Y4)

video 2 \(form\_recherche.php et reponse\_rechercher.php\):  [https://youtu.be/diXbF6tvDxg](https://youtu.be/diXbF6tvDxg)

## séance du jour:

introduction: [https://youtu.be/y-CV7Y-ebqw](https://youtu.be/y-CV7Y-ebqw)

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

faites vérifier l'accès au backoffice par votre enseignant  TP en envoyant l'url dans le salon M2203.



## exercice 2: Mettre en oeuvre la page bd\_gestion.php en  la créant dans un sous-dossier "admin" de votre dossier "dutaf"

cette page html.php est très similaire à listing.php, partez donc d'une copie de cette page pour faire la page bd\_gestion.php. la seul différence, c'est l'ajout des colonnes "supprimer"et "modifier" en face de chaque article.

## exercice 3: pour ceux qui auront de l'avance, mettez en forme l'ensemble des pages déjà créée avec du CSS.

## 
