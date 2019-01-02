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
        <h3>Liste des categories :</h3>
        <ul>
            <pre>
            <?php
                $categories = App\Table\Categorie::getAll();
                foreach ($categories as $categorie) {
                    echo '<li class="">' . ucfirst($categorie["nom"]) . '</li>';
                }
            ?>
            </pre>
        </ul>
    </div>
</div>
