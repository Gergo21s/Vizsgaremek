<?php
declare(strict_types=1);

// Using namespaces aliasing
use Util\Util as Util;
use Database\Database as Database;

// Set environment
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set current datetime
$args['date'] = date('Y-m-d H:i:s');

// Set query
$query = "INSERT INTO `reservation` 
          (`type_id`, `last_name`, `first_name`, `email`, `phone`, 
           `post_code`, `city`, `address`, `message`, `date`) VALUES";

// Execute query
$result = $db->execute($query, $args);

// Close connection
$db = null;

// Set response
Util::setResponse($result);