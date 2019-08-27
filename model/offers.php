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

$offers = new offer;
$offers->loadOffers($settings['limit_page']);

if($settings['search_box_category']){
	get_offers_categories();
}
if($settings['search_box_state']){
	get_offers_state();
}
if($settings['search_box_type']){
	get_offers_type();
}
if($settings['search_box_options']){
	get_offers_options();
}

$settings['seo_title'] = lang('Accommodation - search results').' - '.$settings['title'];
$settings['seo_description'] = lang('Accommodation - search results').' - '.$settings['description'];


?>