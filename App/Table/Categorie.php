<?php
namespace App\Table;
use App\Database;
use \PDO;

class Categorie {

    private static function getPDOHere() {
        $db = new Database('Blog');
        return $pdo = $db->getPDO();
    }

    public static function getAll() {
        $pdo = self::getPDOHere();

        return $pdo->query( "SELECT * FROM categories" ) ->fetchAll(PDO::FETCH_ASSOC); //renvoie le tableau assoc des résultats
    }

}
