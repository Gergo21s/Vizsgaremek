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
                 `img`, 
                 `fellepo1`,
                 `fellepo2`, 
                 `fellepo3`, 
                 `fellepo4`, 
                 `fellepo5`, 
                 `date`, 
                 `price` 
            FROM `ticketreservation_type`
            ORDER BY `id`;";

// Execute query
$result = $db->execute($query);

// Close connection
$db = null;

// Set response
Util::setResponse($result);