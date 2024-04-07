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

// Merge arguments with default
$args = Util::objMerge(array(
  "first_name" => null, 
  "last_name" => null, 
  "email" => null, 
  "password" => null,
  "phone" => null, 
  "post_code" => null, 
  "city" => null, 
  "address" => null, 
  "date" => null
), $args, true);

// Set query
$query = "INSERT INTO `registration` 
          (`first_name`, `last_name`, `email`, `password`, `phone`, 
           `post_code`, `city`, `address`, `date`) VALUES";

// Execute query with arguments
$result = $db->execute($query, $args);

// Close connection
$db = null;

// Check not success
if (!$result['affectedRows']) {

	// Set error
	Util::setError('A regisztráció sikertelen!');
}

// Set response
Util::setResponse("A regisztráció sikeresen megtörtént!");