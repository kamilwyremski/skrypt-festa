<?php
/************************************************************************
 * The script of accommodation FESTA
 * Copyright (c) 2016 - 2019 Kamil Wyremski
 * http://wyremski.pl
 * kamil.wyremski@gmail.com
 * 
 * All right reserved
 * 
 * *********************************************************************
 * THIS SOFTWARE IS LICENSED - YOU CAN MODIFY THESE FILES
 * BUT YOU CAN NOT REMOVE OF ORIGINAL COMMENTS!
 * ACCORDING TO THE LICENSE YOU CAN USE THE SCRIPT ON ONE DOMAIN. DETECTION
 * COPY SCRIPT WILL RESULT IN A HIGH FINANSIAL PENALTY AND WITHDRAWAL
 * LICENSE THE SCRIPT
 * *********************************************************************/
 
// Set the demonstration mode CMS  true/false
define('_CMS_TEST_MODE_', false);

// Debug Mode (show all error) true/false
define('_DEBUG_MODE_', false);

if(_DEBUG_MODE_){
	ini_set("display_errors", "1");
	error_reporting(E_ALL);
}else{
	error_reporting(0);
}

require_once(realpath(dirname(__FILE__)).'/db.php');

try{
    $db = new PDO('mysql:host='.$mysql_server.';dbname='.$mysql_db, $mysql_user, $mysql_pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
}
catch (PDOException $e){
    die ("Error connecting to database!");
}

function get_settings(){
	global $db, $settings;
	$sth = $db->query('SELECT * FROM '._DB_PREFIX_.'settings');
	if(!$sth){die('Error! Incorrect database');}
	foreach($sth as $row){
		$settings[$row['name']] = $row['value'];
	}
	$sth->closeCursor();
}
get_settings();

require_once(realpath(dirname(__FILE__)).'/../php/global.php');
require_once(realpath(dirname(__FILE__)).'/../php/dotpay.class.php');
load_lang($settings['lang']);

if($settings['smtp']){include_once(realpath(dirname(__FILE__)).'/smtp.php');}

require_once(realpath(dirname(__FILE__)).'/../php/offer.class.php');
