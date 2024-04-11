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
$query = "SELECT `programs`.`id`, 
                 `programs`.`img`, 
                 `programs`.`date`, 
                 `programs`.`time`, 
                 `programs`.`price`,
                 `programs`.`description`,
                 `ticketreservation_type`.`fellepo1`, 
                 `ticketreservation_type`.`fellepo2`, 
                 `ticketreservation_type`.`fellepo3`, 
                 `ticketreservation_type`.`fellepo4`,
                 `ticketreservation_type`.`fellepo5`,
                 `information`.`text`,
                 `information`.`dress`,
                 `information`.`ticket`
            FROM `programs`
      INNER JOIN `information`
              ON `information`.`program_id`=`programs`.`id`
      INNER JOIN `ticketreservation_type`
              ON `information`.`type_id`=`ticketreservation_type`.`id`
        ORDER BY `programs`.`id`;";

// Execute query
$result = $db->execute($query);

// Close connection
$db = null;

// Set response
Util::setResponse($result);