<?php

// Command to start dev server
// php -S localhost:8000 -t public

require '../helpers.php';

$routes = [
    '/' => 'controllers/home.php',
    '/listings' => 'controllers/listings/index.php',
    '/listings/create' => 'controllers/listings/create.php',
    '404' => 'controllers/error/404.php',
];


$uri = $_SERVER['REQUEST_URI'];

if(array_key_exists($uri, $routes)) {
    require(basepath($routes[$uri]));
} else {
    require basepath($routes['404']);
}