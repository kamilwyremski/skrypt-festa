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
 
session_start(); 

require_once('../config/config.php');
require_once('user.class.php');

if(isset($_POST['action'])){
	if($_POST['action']=='get_coordinates' and $_POST['address'] and $_POST['address']!=''){
		echo json_encode(get_coordinates($_POST['address']));
	}elseif($_POST['action']=='remove_offer' and isset($_POST['id']) and $_POST['id']>0){
		$offer = new offer;
		if($offer->checkPermissions($_POST['id'])){
			$offer->remove($_POST['id']);
		}
	}
}else{
	die('Access denied!');
}
?>