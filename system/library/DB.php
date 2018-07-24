<?php
/**
 * Created by PhpStorm.
 * User: shakidevcom
 * Date: 22.07.2018
 * Time: 20:51
 */

use Database\Database;
use Slug as Slug;

class DB extends Database
{
    public $db;

    public function __construct()
    {
        $this->db = parent::getInstance();
        $this->db = $this->db->getConnection();
    }

    public function read($sql)
    {
        return $this->db->query($sql)->fetchAll(PDO::FETCH_OBJ);
    }

    public function checkTable($table)
    {
        $tableExist = $this->db->prepare('SHOW TABLES LIKE ?');
        $tableExist->execute(array($table));
        return (strlen($tableExist->fetchColumn()) > 0) ? true : false;
    }

    public function create($csv)
    {
        $forRandom = array();
        foreach ($csv as $cs) {
            $stmt = $this->db->prepare("INSERT INTO discounts (id,title,start,end,status,slug) VALUES (?,?,?,?,?,?)");
            $val = array();
            foreach ($cs as $key => $value) {
                if ($key === 'start' || $key === 'end') {
                    $value = array_reverse(explode('-', $value));
                    $value = implode('-', $value);
                    if ($key === 'start')
                        $value = strtotime($value);
                }
                $val[] = $value;
            }
            array_push($forRandom,$cs['id']);
            $val[] = Slug::slugify($cs['title']);
            $stmt->execute($val);
        }
        return $forRandom;
    }

    public function update($variable)
    {

    }

    public static function delete()
    {

    }

}