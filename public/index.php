<?php

// Command to start dev server
// php -S localhost:8000 -t public

require '../helpers.php';



$uri = $_SERVER['REQUEST_URI'];

require basePath('router.php');