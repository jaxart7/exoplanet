<div class="row">

    <div class="col-sm-7 ml-auto">

        <?php
            $articles = App\Tables\Article::getAll();
            foreach ($articles as $article):
        ?>
            <h2 class="">
                <p><a href="<?= App\Tables\Article::getUrl($article->id) ;?>" ><?= ucfirst($article->titre); ?></a></p>
            </h2>
            <p>Catégorie : <em><?= ucfirst($article->categorie); ?></em></p>
            <p><?= $article->presentation; ?></p>
        <?php endforeach; ?>



    </div>

    <div class="col-sm-3 mr-auto">
        <h3>Liste des categories :</h3>
        <ul>
            <pre>
            <?php
                $categories = App\Tables\Categorie::getAll();
                foreach ($categories as $categorie) {
                    echo '<li class="">' . ucfirst($categorie->categorie) . '</li>';
                }
            ?>
            </pre>
        </ul>
    </div>
</div>
