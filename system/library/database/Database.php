<?php namespace Database;
/**
 * Created by PhpStorm.
 * User: shakidevcom
 * Date: 22.07.2018
 * Time: 20:12
 */
use PDO;
class Database
{
        private static $instance = null;
        public  $connected;
        private $host = DB_HOSTNAME;
        private $user = DB_USERNAME;
        private $password = DB_PASSWORD;
        private $database = DB_DATABASE;

        private function __construct()
        {
            try {
                $this->connected = new PDO("mysql:host=localhost;dbname=chocolife",
                    "root", "");
            } catch (PdoException $e) {
                echo 'DB Error: '.$e->getMessage();
            }
        }
    private function __clone(){}
    private function __wakeup () {}

        public static function getInstance(){
            if(self::$instance !== null){
                return self::$instance;
            }
            return new self;
        }

        public static function query($sql){
            print_r($sql);
            die();
        }

        public function getConnection(){
            return $this->connected;
        }

    }