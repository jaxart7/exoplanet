<?php
namespace App;
use \PDO;

class Database {

    private $db_name;
    private $db_user;
    private $db_pass;
    private $db_host;
    private $pdo;

    public function __construct($db_name, $db_user ='jaxart', $db_pass = 'test', $db_host='localhost') {
        $this->db_name = $db_name;
        $this->db_user = $db_user;
        $this->db_pass = $db_pass;
        $this->db_host = $db_host;
    }

    public function getPDO() {
        if ($this->pdo === null) { // une seule connexion à la BDD
        $pdo = new PDO('mysql:dbname=astronomie;host=localhost', 'jaxart', 'test', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->pdo = $pdo;
        }
        return $pdo;
    }

}
