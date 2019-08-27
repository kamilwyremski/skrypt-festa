<?php
/************************************************************************
 * The script of accommodation FESTA v 1.5
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

header('Content-Type: text/html; charset=utf-8');

require_once('config/config.php');

require_once('libs/Smarty.class.php');
$smarty = new Smarty();
$smarty->template_dir = 'views/'.$settings['template'];
$smarty->compile_dir = 'tmp';
$smarty->cache_dir = 'cache';

include('php/user.class.php');
include('php/controller.php');

$smarty->assign("settings", $settings);
$smarty->assign('page',$page);
$smarty->assign('links',$links);

$smarty->display('main.tpl');
 
?>