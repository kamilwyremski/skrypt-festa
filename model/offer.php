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

$offer = new offer;

if(isset($_GET['id']) and $_GET['id']>0 and $offer->checkActiveOffer($_GET['id'])){

	$offer->loadOffer($_GET['id'], true);

	if($_GET['name_url']!=$offer->name_url){
		header("Location: ".$settings['base_url'].'/'.$offer->id.','.$offer->name_url);
		die('redirect');
	}
	
	if(isset($_GET['status'])){
		if($_GET['status']=='OK'){
			$smarty->assign("alert_success", lang("Payment correct. The offers is now promoted"));
		}elseif($_GET['status']=='FAIL'){
			$smarty->assign("alert_danger", lang("Payment error. Please contact with administrator"));
		}
	}

	$settings['seo_title'] = $offer->name." - ".$settings['title'];
	$settings['seo_description'] = substr(trim(preg_replace('/\s\s+/', ' ', strip_tags($offer->description))),0,200);

	if($settings['promote_by_dotpay']){
		$DotpayParametersArray = array (
			"amount" => $settings['promote_cost'],
			"currency" => $settings['dotpay_currency'],
			"description" => lang('Promote offer').': '.$offer->name,
			"url" => $settings['base_url'].'/'.$offer->id.','.$offer->slug,
			"type" => "3",
			"urlc" => $settings['base_url'].'/php/payments_dotpay.php',
			"control" => $offer->id
		);
		if($settings['dotpay_test_mode']){
			$DotpayEnvironment = "test";
		}else{
			$DotpayEnvironment = "production";
		}
		$smarty->assign("dotpay_form", dotpay::GenerateChkDotpayRedirection ($settings['dotpay_id'],$settings['dotpay_pin'], $DotpayEnvironment, "POST", $DotpayParametersArray,[]));
	}
	
	if(isset($_POST['action']) and $_POST['action']=='send_message' and isset($_POST['name']) and isset($_POST['email']) and isset($_POST['message']) and isset($_POST['captcha'])){

		if($_POST['captcha']!=$_SESSION['captcha']){
			$error['captcha'] = lang('Invalid captcha code.');
		}else{
			if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
				$error['email'] = lang('Incorrect e-mail address.');
			}
			if($_POST['name']==''){
				$error['name'] = lang('Enter your name');
			}
			if($_POST['message']==''){
				$error['message'] = lang('Enter your message');
			}
			if(!isset($_POST['rules'])){
				$error['rules'] = lang('This field is mandatory.');
			}
		}

		if(isset($error)){
			$error['alert'] = lang('The message was not sent');
			$smarty->assign("error", $error);
			$smarty->assign("input", array('name'=>$_POST['name'], 'email'=>$_POST['email'], 'message'=>$_POST['message']));
		}else{

			if(send_mail('offer',$offer->email,array('name'=>$_POST['name'], 'email'=>$_POST['email'], 'message'=>$_POST['message'], 'offer_name'=>$offer->name, 'offer_url'=>$offer->id.','.$offer->name_url))){
				$smarty->assign("info", lang('The message was correctly sent'));
			}else{
				$error['alert'] = lang('The message was not sent');
				$smarty->assign("error", $error);
			}
		}
	}
}else{
	include('model/404.php');
}

?>
