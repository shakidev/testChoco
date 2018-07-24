<?php
/**
 * Created by PhpStorm.
 * User: shakidevcom
 * Date: 22.07.2018
 * Time: 20:05
 */
function dd($dd)
{
    var_dump($dd);
    die();
}

function library($class)
{
    $file = DIR_SYSTEM . 'library/' . str_replace('\\', '/', strtolower($class)) . '.php';
    if (is_file($file)) {
        include_once($file);
        return true;
    } else {
        return false;
    }
}

spl_autoload_register('library');
spl_autoload_extensions('.php');

function start($start, $variable = [])
{
    header("Content-type: text/html; charset=utf-8");
    $request = new Request();
    $route = new Route($request);
    Template::view($start . '.tpl', $variable)->with($route->main())->render();
}