[Retour à l'accueil](README.md)

# M2203 | Séance 9 (TP) | Administration (gestion.html et gest_art.php)
![GitHub Logo](/seance10.jpg)
Mettre en oeuvre la page gestion.html et la page article_gestion.php en les créant dans un sous-dossier "admin"

Protéger l'ensemble du dossier "admin" en ajoutant un fichier ".htaccess" et un fichier "htpasswd"

Pour crééer un fichier ".htaccess" :

Créez un nouveau fichier nommé ".htaccess", avec le point devant et sans extension, à l’aide d'un editeur de texte, et coller ce qui suit en modifiant mmiXXXX par votre identifiant mmi :

```
AuthUserFile /home/mmiXXX/public_html/dutaf/admin/htpasswd
AuthName "Acces securise a mon site Dutaf"
AuthType Basic
<LIMIT GET POST>
Require valid-user
</LIMIT>
```

Transférer le fichier ".htaccess" dans le répertoire admin de dutaf, ainsi que le fichier "htpasswd".

Dans le fichier "htpasswd" ajouter l'empreinte (  prof:$apr1$dJfZ1bRd$kKzpw.TAK9lSU99wOIp.Q.  ) pour que les enseignants puissent venir consulter le back-office.

Pour générer un mot de passe, vous pouvez utiliser ce site web ( http://aspirine.org/htpasswd.html ). Une fois que vous avez chiffré le mot de passe à l’aide de l’algorithme MD5, créez un autre fichier nommé htpasswd dans lequel vous collez la ligne complète.

(prévoir avec l'enseignant la mise en oeuvre d'un accès sécurisé pour lui)
```
