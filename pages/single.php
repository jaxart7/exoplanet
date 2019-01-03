<?php
echo 'id de l article : ' .$_GET['id'];
$idArticle = $_GET['id'];

$article = App\Tables\Article::getOne($idArticle);
?>

<h1> <?= $article->titre; ?></h1>

<p> <?= $article->contenu; ?></p>
