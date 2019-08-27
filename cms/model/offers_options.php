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

	if(!_CMS_TEST_MODE_ and isset($_POST['action'])){
		if($_POST['action']=='add_option' and isset($_POST['name']) and $_POST['name']!=''){
			$sth = $db->prepare('INSERT INTO `'._DB_PREFIX_.'offers_options`(`name`) VALUES (:name)');
			$sth->bindValue(':name', $_POST['name'], PDO::PARAM_STR);
			$sth->execute();
		}elseif($_POST['action']=='edit_option' and isset($_POST['id']) and $_POST['id']>0 and isset($_POST['name']) and $_POST['name']!=''){
			$sth = $db->prepare('UPDATE `'._DB_PREFIX_.'offers_options` SET name=:name WHERE id=:id limit 1');
			$sth->bindValue(':id', $_POST['id'], PDO::PARAM_INT);
			$sth->bindValue(':name', $_POST['name'], PDO::PARAM_STR);
			$sth->execute();
		}elseif($_POST['action']=='remove_option' and isset($_POST['id']) and $_POST['id']>0){
			$sth = $db->prepare('DELETE FROM `'._DB_PREFIX_.'offers_options` WHERE id=:id limit 1');
			$sth->bindValue(':id', $_POST['id'], PDO::PARAM_INT);
			$sth->execute();
			$sth = $db->prepare('DELETE FROM `'._DB_PREFIX_.'offers_options_values` WHERE option_id=:option_id');
			$sth->bindValue(':option_id', $_POST['id'], PDO::PARAM_INT);
			$sth->execute();
		}
	}

	get_offers_options();
}

?>