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
  "type_id" => null, 
  "piece" => null,
  "first_name" => null, 
  "last_name" => null, 
  "email" => null, 
  "phone" => null, 
  "post_code" => null, 
  "city" => null, 
  "address" => null, 
  "message" => null, 
), $args, true);

// Set query
$query = "INSERT INTO `ticketreservation` 
          (`type_id`, `piece`, `first_name`, `last_name`, `email`, `phone`, 
           `post_code`, `city`, `address`, `message`) VALUES";

// Execute query with arguments
$result = $db->execute($query, $args);

// Close connection
$db = null;

// Check not success
if (!$result['affectedRows']) {

	// Set error
	Util::setError('A jegyvásárlás nem sikerült!');
}

// Set response
Util::setResponse("A jegyvásárlás sikerült! (Jegyedet a helyszínen tudod átvenni.)");