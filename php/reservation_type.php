<?php
declare(strict_types=1);

// Using namespaces aliasing
use Util\Util as Util;
use Database\Database as Database;

// Set environment
require_once('../../common/php/environment.php');

// Connect to database
$db = new Database();

// Set query
$query = "SELECT `id`, 
                 `name`, 
                 `description`, 
                 `price`, 
                 `img` 
            FROM `reservation_type`
        ORDER BY `id`;";

// Execute query
$result = $db->execute($query);

// Close connection
$db = null;

// Set response
Util::setResponse($result);