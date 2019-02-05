<?php
require '../App/Autoloader.php';
App\Autoloader::register();

if (isset($_GET['p'])) {
    $p = $_GET['p'];
} else {
    $p = 'home';
}


ob_start();
if ($p === 'home') {
    require '../pages/home.php' ;
} elseif ($p === 'article') {
    require '../pages/single.php' ;
} elseif ($p === 'exoplanets') {
    require '../pages/exoplanets.php' ;
} elseif ($p === 'search') {
    require '../pages/search.php' ;
}

$content = ob_get_clean();
require '../pages/templates/default.php';
