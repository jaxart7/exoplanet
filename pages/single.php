<h1>Single page</h1>

<?php
$post = $db->prepare('SELECT * FROM News WHERE id = ? ', [$_GET['id']], 'App\Table\Article', true );
?>
<h1> <?= $post->titre; ?></h1>

<p> <?= $post->text; ?></p>
