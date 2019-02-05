<?php
namespace App\Tables;
use App\Database;
use \PDO;

class Article extends Table {

    public static function getUrl($id) {
        $url = 'index.php?p=article&id=' .$id ;
        return $url;
    }

    public static function getAll() { // pour afficher les news sur la home page
        $pdo = self::getPDOHere();
        return $pdo->query("
          SELECT news.id, news.titre, news.presentation, categories.categorie as categorie
          FROM news
          LEFT JOIN categories
              ON categorie_id = categories.id;
      ") ->fetchAll(PDO::FETCH_OBJ); //renvoie le tableau assoc des résultats
    }

    public static function getOne($id) { // pour afficher un article sur la single page
        $pdo = self::getPDOHere();
        $req = "SELECT * FROM news WHERE id = $id";
        return $pdo->query($req) ->fetch(PDO::FETCH_OBJ); //renvoie un objet
    }
}
