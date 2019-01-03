<?php
namespace App\Tables;
use App\Database;
use \PDO;

class Categorie extends Table {

    public function getAll() {
        $pdo = self::getPDOHere();
        return $pdo->query( "SELECT * FROM categories" ) ->fetchAll(PDO::FETCH_OBJ); //renvoie un array d'objets
    }

}
