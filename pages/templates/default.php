<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>Blog : Exoplanètes</title>

    <!-- Bootstrap core CSS -->
    <link href="../node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <!-- menu -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="../public/index.php">Exoplanètes</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="../public/index.php">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../public/index.php?p=exoplanets">Exoplanètes</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" action="../public/index.php?" method="get">
                <input class="form-control mr-sm-2" type="text" placeholder="Votre recherche ..." name="search">
                <button type="submit" class="btn btn-secondary my-2 my-sm-0">Rechercher</button>
            </form>
        </div>
    </nav>

    <main role="main" class="container-fluid">

        <div class="" style="padding-top: 100px">
             <?= $content ?>  <!-- contenu dynamique-->
        </div>

    </main><!-- /.container -->
</body>

</html>
