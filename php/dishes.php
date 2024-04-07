<?php
declare(strict_types=1);

// Using namespaces aliasing
use Util\Util as Util;
use Database\Database as Database;

// Set environment
require_once('../../common/php/environment.php');

// Connect to database
$db = new Database();

// Set query drinks
$query = "SELECT `name`, 
                 `description`, 
                 `price`
            FROM `dishes`
            WHERE `dish_category_id` = 1
            ORDER BY `id`;";

// Set query menu
$query = "SELECT `name`, 
                 `description`, 
                 `price`
            FROM `dishes`
            WHERE `dish_category_id` = 2
            ORDER BY `id`;";

// Execute query
$result = $db->execute($query);

// Close connection
$db = null;

// Set response
Util::setResponse($result);