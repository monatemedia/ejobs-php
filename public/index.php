<?php

// Command to start dev server
// php -S localhost:8000 -t public

require '../helpers.php';
require basePath('Router.php');
require basePath('Database.php');

//Instantiate the router
$router = new Router();

//Get routes
$routes = require basePath('routes.php');

//Get the current URI and HTTP method
$uri = $_SERVER['REQUEST_URI'];
$method = $_SERVER['REQUEST_METHOD'];

//Route the request
$router->route($uri, $method);