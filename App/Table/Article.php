<?php
namespace App\Table;
use App\Database;
use \PDO;

class Article {

    private static function getPDOHere() {
        $db = new Database('Blog');
        return $pdo = $db->getPDO();
    }

    public static function getAll() {
        $pdo = self::getPDOHere();

        return $pdo->query("
            SELECT News.id, News.titre, News.text, categories.nom as categorie
            FROM News
            LEFT JOIN categories
                ON categorie_id = categories.id;
        ") ->fetchAll(PDO::FETCH_ASSOC); //renvoie le tableau assoc des résultats
    }

    public static function getLast() {
        return App::getDb()->query("
            SELECT News.id, News.titre, News.text, categories.nom as categorie
            FROM News
            LEFT JOIN categories
                ON categorie_id = categories.id;"
        , __CLASS__);
    }

    public function getUrl() {
        return 'index.php?p=article&id=' . $this->id;
    }

    public function getExtrait() {
        $html = '<p>' . substr($this->text, 0 , 200) . '...</p>';
        $html .= '<p><a href="' . $this->getUrl() . '"> Voir la suite</a></p>';
        return $html;
    }
}
