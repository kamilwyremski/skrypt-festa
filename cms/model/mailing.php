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

	if(isset($_POST['action'])){
		if(!_CMS_TEST_MODE_ and $_POST['action']=='send_mailing' and !empty($_POST['subject']) and isset($_POST['message'])){

			$sth = $db->query('SELECT email FROM '._DB_PREFIX_.'users WHERE active=1');
			while ($row = $sth->fetch(PDO::FETCH_ASSOC)){
				mails_queue_add('mailing',$row['email'],array('subject'=>$_POST['subject'], 'message'=>$_POST['message']));
			}
			header('Location: '.$settings['base_url'].'/cms/?action=statistics');
			die('redirect');
		}
	}

	$sth = $db->query('SELECT COUNT(1) FROM '._DB_PREFIX_.'mails_queue');
	$mails_queue = $sth->fetchColumn();
	if($mails_queue){
		$smarty->assign("mails_queue", $mails_queue);
	}
}
