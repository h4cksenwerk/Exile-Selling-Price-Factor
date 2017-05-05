/**
 * ExileClient_util_gear_calculateTotalPrice
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_items","_price"];
_items = _this;
_price = 0;
{
	_price = _price + (getNumber (missionConfigFile >> "CfgExileArsenal" >> _x >> "price"));
	_price = _price * ( 1 + getNumber (missionConfigFile >> "CfgExileArsenal" >> _x >> "quality") / 10);
	_price = (floor _price) max 1;
}
forEach _items;
_price