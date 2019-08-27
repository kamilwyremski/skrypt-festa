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
 
if(!isset($settings['base_url'])){
	die('Access denied!');
}

if($user_cms->logged_in){

	if(!_CMS_TEST_MODE_ and isset($_POST['action']) and $_POST['action']=='save_settings_black_list'){
		
		$sth = $db->prepare('UPDATE `'._DB_PREFIX_.'settings` SET value=:value WHERE name=:name limit 1');

		$black_list_email = array_map('trim', array_filter(explode(PHP_EOL, $_POST['black_list_email'])));
		asort($black_list_email);
		$black_list_email = implode($black_list_email,PHP_EOL);
		
		$sth->bindValue(':value', $black_list_email, PDO::PARAM_STR);
		$sth->bindValue(':name', 'black_list_email', PDO::PARAM_STR);
		$sth->execute();
		
		$black_list_ip = array_map('trim', array_filter(explode(PHP_EOL, $_POST['black_list_ip'])));
		asort($black_list_ip);
		$black_list_ip = implode($black_list_ip,PHP_EOL);
		
		$sth->bindValue(':value', $black_list_ip, PDO::PARAM_STR);
		$sth->bindValue(':name', 'black_list_ip', PDO::PARAM_STR);
		$sth->execute();
		
		get_settings();
	}
	
}


