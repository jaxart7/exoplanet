<?php
namespace App;

class App {

    const DB_NAME = 'Blog';
    const DB_USER = 'jaxart';
    const DB_PASS = 'test';
    const DB_HOST = 'localhost';

    private static $database;

    public static function getDb() { // connexion à la bdd
        if (self::$database === null) { // pour éviter une nouvelle connexion à la BDD
        self::$database = new Database(self::DB_NAME, self::DB_USER, self::DB_PASS, self::DB_HOST);
        }
        return self::$database;
    }
}
