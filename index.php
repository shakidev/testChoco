<?php

if (is_file('config.php')) {
    require_once('config.php');
}

require_once(DIR_SYSTEM . 'start.php');
start('main',["title" => $sitename]);