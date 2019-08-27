
{if $settings.ads_side_1}<div class="ads">{$settings.ads_side_1}</div>{/if}

<form class="form-horizontal form-search" method="get" id="form_search_offers">
	<input type="hidden" name="search">
	{if $settings.search_box_name}
		<div class="form-group">
			<label for="name" class="control-label">{'Object Name'|lang}: </label>
			<input class="form-control" type="text" name="name" id="name" placeholder="{'Hotel...'|lang}" title="{'Enter the name of the object'|lang}" {if isset($smarty.get.name)}value="{$smarty.get.name}"{/if}>
		</div>
	{/if}
	{if isset($offers_categories)}
		<div class="form-group check_all_parent">
			<label for="category" class="control-label">{'Category'|lang}:</label>
			<div class="checkbox">
				<label><input type="checkbox" class="check_all" {if !isset($smarty.get.category) or empty($smarty.get.category)}checked{/if}>{'All'|lang}</label>
			</div>
			<div class="group_checkbox" {if !isset($smarty.get.category) or empty($smarty.get.category)}style="display:none"{/if}>
				{foreach from=$offers_categories item=item key=key}
					<div class="checkbox">
						<label><input type="checkbox" name="category[]" value="{$item.name_url}" {if isset($smarty.get.category) && is_array($smarty.get.category) && $item.name_url|in_array:$smarty.get.category}checked{/if}>{$item.name}</label>
					</div>
				{/foreach}
			</div>
		</div>
	{/if}
	{if isset($offers_type)}
		<div class="form-group check_all_parent">
			<label for="type" class="control-label">{'Offer type'|lang}:</label>
			<div class="checkbox">
				<label><input type="checkbox" class="check_all" {if !isset($smarty.get.type) or empty($smarty.get.type)}checked{/if}>{'All'|lang}</label>
			</div>
			<div class="group_checkbox" {if !isset($smarty.get.type) or empty($smarty.get.type)}style="display:none"{/if}>
				{foreach from=$offers_type item=item key=key}
					<div class="checkbox">
						<label><input type="checkbox" name="type[]" value="{$item.name_url}" {if isset($smarty.get.type) && is_array($smarty.get.type) && $item.name_url|in_array:$smarty.get.type}checked{/if}>{$item.name}</label>
					</div>
				{/foreach}
			</div>
		</div>
	{/if}
	{if isset($offers_state)}
		<div class="form-group check_all_parent">
			<label for="state" class="control-label">{'State'|lang}:</label>
			<div class="checkbox">
				<label><input type="checkbox" class="check_all" {if !isset($smarty.get.state) or empty($smarty.get.state)}checked{/if}>{'All'|lang}</label>
			</div>
			<div class="group_checkbox" {if !isset($smarty.get.state) or empty($smarty.get.state)}style="display:none"{/if}>
				{foreach from=$offers_state item=item key=key}
					<div class="checkbox">
						<label><input type="checkbox" name="state[]" value="{$item.name_url}" {if isset($smarty.get.state) && is_array($smarty.get.state) && $item.name_url|in_array:$smarty.get.state}checked{/if}>{$item.name}</label>
					</div>
				{/foreach}
			</div>
		</div>
	{/if}
	{if $settings.search_box_address}
		<div class="form-group">
			<input class="form-control btn-warning" type="submit" value="{'SEARCH!'|lang}">
		</div>
		<div class="form-group">
			<label for="search_box_address">{'Address'|lang}:</label>
			<input type="text" name="address" class="form-control" placeholder="{'1600 Pennsylvania Avenue NW, Washington, D.C. 20500'|lang}" title="{'Enter the address'|lang}" {if isset($smarty.get.address)}value="{$smarty.get.address}"{/if} id="search_box_address">
		</div>
		{if $settings.search_box_distance && $settings.google_maps_api}
			<div class="form-group">
				<div class="form-inline text-right">
					<div class="input-group">
						<div class="input-group-addon">{'Distance'|lang}: </div>
						<input type="number" name="distance" class="form-control text-right" placeholder="20" title="{'Enter the distance from the searched address'|lang}" value="{if isset($smarty.get.distance)}{$smarty.get.distance}{else}10{/if}" min="0" step="1" style="width:80px">
						<div class="input-group-addon">{'km'|lang}</div>
					</div>
				</div>
			</div>
		{/if}
	{/if}
	{if $settings.search_box_price}
		<div class="form-group">
			<label for="price" class="control-label">{'Price'|lang}: </label>
			<div class="input-group">
				<input class="form-control text-right" type="number" name="price_from" id="price_from" placeholder="{'Min...'|lang}" title="{'Enter the minimum value'|lang}" {if isset($smarty.get.price_from)}value="{$smarty.get.price_from}"{/if} min="0" step="0.01">
				<div class="input-group-addon"> - </div>
				<input class="form-control text-right" type="number" name="price_to" id="price_to" placeholder="{'Max...'|lang}" title="{'Enter the maximum value'|lang}" {if isset($smarty.get.price_to)}value="{$smarty.get.price_to}"{/if} min="0" step="0.01">
			</div>
		</div>
	{/if}
	{if isset($offers_options)}
		<div class="form-group check_all_parent">
			<label for="options" class="control-label">{'Offer options / facilities'|lang}:</label>
			{if !isset($smarty.get.options) or empty($smarty.get.options)}<a href="#" class="show_group_checkbox" title="{'Show options'|lang}"><br>{'Show options'|lang}</a>{/if}
			<div class="group_checkbox" {if !isset($smarty.get.options) or empty($smarty.get.options)}style="display:none"{/if}>
				{foreach from=$offers_options item=item key=key}
					<div class="checkbox">
						<label><input type="checkbox" name="options[]" value="{$key}" {if isset($smarty.get.options) && is_array($smarty.get.options) && $key|in_array:$smarty.get.options}checked{/if}>{$item.name}</label>
					</div>
				{/foreach}
			</div>
		</div>
		<br>
	{/if}
	<div class="form-group">
		<input class="form-control btn-warning" type="submit" value="{'SEARCH!'|lang}">
	</div>
</form>

{if $settings.ads_side_2}<div class="ads">{$settings.ads_side_2}</div>{/if}