# Séance 9 : Intégration d'image sur DUTAF

Dans cette partie, vous travaillerez sur **DUTAF** afin d'intégrer pour les produits, la possibilité d'uploader une image pour chacun des articles.

**Chacune des images comportera un copyright automatiquement inscrit lors de l'upload.**

Cette modification implique :

* L'ajout d'un champs dans la table article, qui va contenir le nom du fichier uploadé \(par exemple image\).
* Un champs supplémentaire dans le formulaire de création \(et de modificaition\) d'un article \(pour rappel : [https://cours.davidannebicque.fr/m1202/seance-13-mails-et-uploads\#uploads](https://cours.davidannebicque.fr/m1202/seance-13-mails-et-uploads#uploads)\)
* Un répertoire pour recevoir les images sur votre serveur FTP, avec les droits adaptés.
* l'affichage de l'image sur votre catalogue pour les produits en disposant.

Exemple d'affiche de l'image dans le catalogue

```text
//pour chaque produit
<img src="affiche_image.php?image=<?php echo $art['image']; ?>" alt="..." />
```

Si `$art` est le tableau contenant votre produit à affiché, et `image` le champ dans votre table.

Et le fichier affiche\_image.php pourrait ressembler à :

{% code title="affiche\_image.php" %}
```php
<?php
header("Content-type: image/jpeg");
$image = imagecreatefromjpeg("votre_repertoire/".$_GET['image']); 
$blanc = imagecolorallocate($image, 255, 255, 255);
$font = './COMICATE.TTF'; $texte = '(c)D. Annebicque';


$taillex = imagesx($image);
$tailley = imagesy($image);

imagettftext($image, 24, 0, $taillex-260, $tailley-10, $blanc, $font, $texte);

imagejpeg($image); imagedestroy($image); 
?>
```
{% endcode %}

{% hint style="info" %}
Contrainte de cette solution : toutes les images doivent être en jpeg. On pourrait faire un test sur l'extension pour savoir quel Header envoyer et comment ouvrir l'image.

Autre contrainte, on génère à chaque fois l'image, on pourrait la marquer à l'upload, la sauvegarder et afficher cette image déjà marquée directement.
{% endhint %}

