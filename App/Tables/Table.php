<?php
namespace App\Tables;
use App\Database;
use \PDO;

class Table { //table générique

    protected function getPDOHere() {
        $db = new Database('astronomie');
        return $db->getPDO();
    }

    public static function search($key) {
        $pdo = self::getPDOHere();
        return $pdo->query('
        SELECT titre FROM news
        WHERE titre  OR presentation LIKE ' . '"%' . $key . '%"' . ' ;'
        )->fetchAll(PDO::FETCH_OBJ); //renvoie un objet
    }

}
