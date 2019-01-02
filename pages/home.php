<div class="row">

    <div class="col-sm-8">

        <?php
            $articles = App\Table\Article::getAll();
            foreach ( $articles as $article ): //liste des articles
        ?>
            <h2 class="">
                <a href=""><?= ucfirst($article['titre']); ?></a>
            </h2>
            <p>Catégorie : <em><?= ucfirst($article['categorie']); ?></em></p>
            <p><?= $article['text']; ?></p>
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
