[Retour à l'accueil](README.md)

# M2203 | Séance 9 (TP) | Administration (gestion.html et gest_art.php)
![GitHub Logo](/plangestion-gest_art.png)
Mettre en oeuvre la page gestion.html et la page gest_art.php en les créant dans un sous-dossier "admin"

Protéger l'ensemble du dossier "admin" en ajoutant un fichier ".htaccess" et un fichier "htpasswd"

Pour crééer un fichier ".htaccess" :

Créez un nouveau fichier nommé ".htaccess", avec le point devant et sans extension, à l’aide d'un editeur de texte, et coller ce qui suit en modifiant mmiXXXX par votre identifiant mmi :

```
AuthUserFile /home/etudiants/mmiXXXX/public_html/dutaf/admin/htpasswd
AuthGroupFile /dev/null
AuthName "Acces securise a mon site Dutaf"
AuthType Basic
<LIMIT GET POST>
Require valid-user
</LIMIT>
```

Transférer le fichier ".htaccess" dans le répertoire admin de dutaf, ainsi que le fichier "htpasswd".

Pour générer un mot de passe, vous pouvez utiliser ce site web ( http://aspirine.org/htpasswd.html ). Une fois que vous avez chiffré le mot de passe à l’aide de l’algorithme MD5, créez un autre fichier nommé htpasswd dans lequel vous collez la ligne complète.

Voici l’empreinte  à ajouter dans votre fichier "htpasswd" pour que l'enseignant puisse accéder à vore back-office :

```
sgbdr:$apr1$ra/iTYt.$vhTxsDexBSCv7NN2h8ABO.
```
