<?php
$search = $_GET['search'];
?>

<h1>Résultats de votre recherche pour "<em><?= $search ?></em>" :</h1>

<ul class="list-group">
    <?php
    $articles = App\Table::search($search);
    ?>

  <li class="list-group-item">  </li>

</ul>
