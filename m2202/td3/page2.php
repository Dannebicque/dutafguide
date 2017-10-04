<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Page 2</title>
</head>
<body>
<h1>Vous habitez à <?php echo $_SESSION['ville']; ?></h1>

<a href="index.php">Home</a>
<a href="page1.php">Page 1</a>
<a href="page2.php">Page 2</a>
</body>
</html>