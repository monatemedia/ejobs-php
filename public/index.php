<?php

// Command to start dev server
// php -S localhost:8000 -t public

require '../helpers.php';
require basePath('Framework/Router.php');
require basePath('Framework/Database.php');

spl_autoload_register(function ($class) {
    $path = basePath('Framework/' . $class . '.php');
    if(file_exists($path)) {
        require $path;
    }
});

//Instantiate the router
$router = new Router();

//Get routes
$routes = require basePath('routes.php');

//Get the current URI and HTTP method
$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$method = $_SERVER['REQUEST_METHOD'];

//Route the request
$router->route($uri, $method);