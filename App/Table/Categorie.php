<?php
namespace App\Table;
use App\Database;
use \PDO;

class Categorie {

    public static function getAll() {
        $db = new Database('Blog');
        $pdo = $db->getPDO();

        return $pdo->query( "SELECT * FROM categories" ) ->fetchAll(PDO::FETCH_ASSOC); //renvoie le tableau assoc des résultats
    }

}
