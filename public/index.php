<?php

// Command to start dev server
// php -S localhost:8000 -t public

require __DIR__ . '/../vendor/autoload.php';


use Framework\Router;
use Framework\Session;

Session::start();

require '../helpers.php';

//Instantiate the router
$router = new Router();

//Get routes
$routes = require basePath('routes.php');

//Get the current URI and HTTP method
$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

//Route the request
$router->route($uri);