<form action="{$PHP_SELF}" class="lists" method="post">
	<table class="lists">
	<thead>
	<tr>
		<th class="listname">Liste</th>
		<th class="listdesc">Beschreibung</th>
		<th class="abo">Abonniert</th>
	</tr>
	</thead>
	<tbody>
	{foreach key=id item=list from=$lists name=mailinglists}
	<tr class="{cycle values=odd,even}">
		<td class="listname"><a href="mailto:{$list[1]}" class="sendaddress">MAIL</a>&nbsp;<a href="{$list[3]}" class="archive">{$list[0]}</a></td>
		<td class="listdesc">{$list[2]}</td>
		<td class="abo">
			<select name="mail[{$list[0]}]">
				<option value=""></option>
				{foreach from=$mails item=mail}
					<option{if in_array($mail,$list[5])} selected="selected"{/if}>{$mail}</option>
				{/foreach}
			</select>
		</td>	
	<tr>
	{/foreach}
	</tbody>
	<tfoot>
	<tr>
		<td colspan="3"><input class="submit" type="submit" name="save" value="&Auml;nderungen speichern" /></td>
	</tfoot>
	</table>
</form>
