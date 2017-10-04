<?php
session_start();

if(isset($_POST['bouton']) && $_POST['bouton'] == 'Connexion')
{
    $_SESSION['nom'] = $_POST['nom'];
    $_SESSION['ville'] = $_POST['ville'];
}


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<?php if (isset($_SESSION['nom']))
{
    echo '<h2>Vous êtes déjà identifié</h2>

    <p><a href="page1.php">Page 1</a></p>
    <p><a href="page2.php">Page 2</a></p>
    <p><a href="logout.php">Déconnexion</a></p>';
} else {
    ?>

    <form action="index.php" method="post">
        <p>
            Nom <input type="text" name="nom"/>
        </p>
        <p>
            Ville <input type="text" name="ville"/>
        </p>
        <input type="submit" value="Connexion" name="bouton"/>

    </form>
    <?php
}

?>

</body>
</html>