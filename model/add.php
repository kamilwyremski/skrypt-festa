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

if($settings['add_offers_not_logged'] or $user->logged_in){
	
	$offer = new offer;

	if(isset($_POST['action']) and isset($_POST['name']) and $_POST['name']!='' and isset($_POST['email']) and $_POST['email']!='' and isset($_POST['session_code']) and $offer->checkSessionCode($_POST['session_code'])){
		if($_POST['action']=='add'){
			if(check_email_black_list($_POST['email']) or check_ip_black_list(get_client_ip())){
				$error['alert'] = lang('The offer could not be added');
				$smarty->assign("error", $error);
			}else{
				$offer->addOffer($_POST);
			}
		}elseif($_POST['action']=='edit' and isset($_GET['id']) and $_GET['id']>0 and $offer->checkPermissions($_GET['id'])){
			$offer->editOffer($_GET['id'],$_POST);
			$smarty->assign("info", lang('Your offer has been saved'));
		}
	}

	$offer->newSessionCode();
	
	get_offers_categories();
	get_offers_state();
	get_offers_type();
	get_offers_options();
	
	$settings['seo_title'] = lang('Add offer').' - '.$settings['title'];
	$settings['seo_description'] = lang('Add offer').' - '.$settings['description'];
}else{
	header("Location: ".$settings['base_url']."/".$links['login']."?redirect=".$links['add']);
	die('redirect');
}



?>