<?php
namespace App\Tables;
use \PDO;

class Exoplanet extends Table {

    public static function getAll() {
        $pdo = self::getPDOHere();
        return $pdo->query( "SELECT id, nom, masse, rayon FROM exoplanets;" ) -> fetchAll(PDO::FETCH_OBJ); //renvoie un array d'objets
    }

}
