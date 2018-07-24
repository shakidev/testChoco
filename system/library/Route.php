<?php
/**
 * Created by PhpStorm.
 * User: shakidevcom
 * Date: 22.07.2018
 * Time: 22:04
 */

use DB as DB;

class Route
{
    private $action;
    private $modules = null;
    private $db;

    public function __construct(Request $r)
    {
        $this->db = new DB;
        $this->action = explode('/', $r->route);
        if (!empty($this->action[3])) {
            $this->modules = $this->action[2];
            $this->action = $this->action[3];
            $this->route();
        }
    }

    public function route()
    {
        $action = $this->modules . ucfirst($this->action);
        if (method_exists($this, $action))
            $this->$action();
    }

    public function main()
    {
        $checkTable = $this->db->checkTable('discounts');
        return ['discounts' => $this->db->read("SELECT * FROM discounts") ?? null, 'checkTable' => $checkTable, 'random' => 0];
    }

    public function discountCreate()
    {
        $file = $_FILES['csv']['tmp_name'];

        $csv = array_map('str_getcsv', file($file));
        array_walk($csv, function (&$a) use ($csv) {
            $header = explode(';', $csv[0][0]);
            $value = explode(';', $a[0]);
            $a = array_combine($header, $value);
        });
        array_shift($csv);
        $data = $this->db->create($csv);
        $forRandom = array_rand($data);
        $forRandom = $data[$forRandom];
        $this->redirectWithRandom($forRandom);
    }

    public function redirectWithRandom($randomNumber){
        header('location: /index.php?rand='.$randomNumber);
        exit();
    }
}