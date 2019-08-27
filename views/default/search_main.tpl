
	<div id="search_box" class="container {if isset($slider)}search_box_slider{/if}">
		<form class="form-horizontal form-search" action="{$links.offers}" method="get">
			<input type="hidden" name="search">
			<div class="form-group">
				{if $settings.search_box_name}
					<div class="col-sm-3">
						<label for="name" class="control-label">{'Object Name'|lang}: </label>
						<input class="form-control" type="text" name="name" id="name" placeholder="{'Hotel...'|lang}" title="{'Enter the name of the object'|lang}" {if isset($smarty.get.name)}value="{$smarty.get.name}"{/if}>
					</div>
				{/if}
				{if isset($offers_categories)}
					<div class="col-sm-3">
						<label for="category" class="control-label">{'Category'|lang}:</label>
						<select class="form-control selectpicker" name="category[]" id="category" title="{'Select the appropriate categories'|lang}" data-live-search="true" multiple data-selected-text-format="count > 3" data-actions-box='true'>
							{foreach from=$offers_categories item=item key=key}
								<option value="{$item.name_url}" {if isset($smarty.get.category) && is_array($smarty.get.category) && $item.name_url|in_array:$smarty.get.category}selected{/if}>{$item.name}</option>
							{/foreach}
						</select>
					</div>
				{/if}
				{if isset($offers_type)}
					<div class="col-sm-3">
						<label for="type" class="control-label">{'Offer type'|lang}:</label>
						<select class="form-control selectpicker" name="type[]" id="type" title="{'Select the appropriate offer type'|lang}" data-live-search="true" multiple data-selected-text-format="count > 3" data-actions-box='true'>
							{foreach from=$offers_type item=item key=key}
								<option value="{$item.name_url}" {if isset($smarty.get.type) && is_array($smarty.get.type) && $item.name_url|in_array:$smarty.get.type}selected{/if}>{$item.name}</option>
							{/foreach}
						</select>
					</div>
				{/if}
				{if $settings.search_box_price}
					<div class="col-sm-3">
						<label for="price_from" class="control-label">{'Price'|lang} ({$settings.currency}): </label>
						<div class="input-group">
							<input class="form-control text-right" type="number" name="price_from" id="price_from" placeholder="{'Min...'|lang}" title="{'Enter the minimum value'|lang}" {if isset($smarty.get.price_from)}value="{$smarty.get.price_from}"{/if} min="0" step="0.01">
							<div class="input-group-addon"> - </div>
							<input class="form-control text-right" type="number" name="price_to" id="price_to" placeholder="{'Max...'|lang}" title="{'Enter the maximum value'|lang}" {if isset($smarty.get.price_to)}value="{$smarty.get.price_to}"{/if} min="0" step="0.01">
						</div>
					</div>
				{/if}
				{if isset($offers_state)}
					<div class="col-sm-4">
						<label for="state" class="control-label">{'State'|lang}:</label>
						<select class="form-control selectpicker" name="state[]" id="state" title="{'Select the appropriate state'|lang}" data-live-search="true" multiple data-selected-text-format="count > 3" data-actions-box='true'>
							{foreach from=$offers_state item=item key=key}
								<option value="{$item.name_url}" {if isset($smarty.get.state) && is_array($smarty.get.state) && $item.name_url|in_array:$smarty.get.state}selected{/if}>{$item.name}</option>
							{/foreach}
						</select>
					</div>
				{/if}
				{if $settings.search_box_address}
					<div class="col-sm-4">
						<label for="search_main_address" class="control-label">{'Address'|lang}:</label>
						<input type="text" name="address" class="form-control" placeholder="{'1600 Pennsylvania Avenue NW, Washington, D.C. 20500'|lang}" title="{'Enter the address'|lang}" {if isset($smarty.get.address)}value="{$smarty.get.address}"{/if} id="search_main_address">
					</div>
					{if $settings.search_box_distance && $settings.google_maps_api}
						<div class="col-sm-2">
							<label for="distance" class="control-label">{'Distance'|lang}:</label>
							<div class="form-inline text-right">
								<div class="input-group">
									<input type="number" name="distance" class="form-control text-right" placeholder="20" title="{'Enter the distance from the searched address'|lang}" value="{if isset($smarty.get.distance)}{$smarty.get.distance}{else}10{/if}" min="0" step="1">
									<div class="input-group-addon">{'km'|lang}</div>
								</div>
							</div>
						</div>
					{/if}
				{/if}
				<div class="col-sm-2 pull-right">
					<label class="control-label">&nbsp;</label>
					<input class="form-control btn-warning" type="submit" value="{'SEARCH!'|lang}">
				</div>
			</div>
		</form>
	</div>
