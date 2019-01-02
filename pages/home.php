<h1>Home page</h1>

<p><a href="index.php?p=single">single</a></p>

<div class="row">

    <div class="col-sm-8">

        <?php foreach ( App\Table\Article::getLast() as $post ): ?>
            <h2 class="">
                <a href="<?= $post->getUrl(); ?>"><?= $post->titre; ?></a>
            </h2>
            <p>Catégorie : <em><?= $post->categorie?></em></p>
            <p><?= $post->getExtrait(); ?></p>
        <?php endforeach; ?>

    </div>

    <div class="col-sm-4">
        <ul>
        </ul>
    </div>
</div>
