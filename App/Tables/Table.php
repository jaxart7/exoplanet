<?php
namespace App\Tables;
use App\Database;

class Table { //table générique

    protected function getPDOHere() {
        $db = new Database('astronomie');
        return $db->getPDO();
    }

}
