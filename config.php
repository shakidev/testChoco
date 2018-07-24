<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$sitename = 'Chocolife Test';
$dir = dirname(__FILE__);
define('DIR_SYSTEM', $dir . '/system/');
define('DIR_TEMPLATE', $dir . '/template/');
$host = $_SERVER['HTTP_HOST'];

// DB
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'chocolife');
