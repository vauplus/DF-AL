/*
	File: fn_blackjack.sqf
	Author: Le Rebellion KRinK
	
	Description:
	Create the Blackjack Guy
*/
_store = blackjack;
_denied1 = false;
_price = 2500;

if(life_cash < _price) exitWith {hint "Du hast nicht genug Geld dabei, eine Runde kostet $2500";};
life_cash = life_cash - _price;
removeAllActions blackjack;



				hint "Du bist am Zug!";
				_number = ceil(random 10);
				_pplayer = _this select 0;
				if (_number == 0) then {robberyreward = 5000; hint "19! Sauber, immerhin gewonnen!";};
				if (_number == 1) then {robberyreward = 0; hint "18! Leider verloren!";};
				if (_number == 2) then {robberyreward = 0; hint "8! Versager...";};						
				if (_number == 3) then {robberyreward = 0; hint "14! Das geht aber besser...";};
				if (_number == 4) then {robberyreward = 0; hint "16! Fast! Los, noch eine Runde..!";};
				if (_number == 5) then {robberyreward = 0; hint "12! Unfassbar, meine Oma spielt besser als du!";};
				if (_number == 6) then {robberyreward = 0; hint "13! Wieder verloren.. Wirklich schlecht..!";};
				if (_number == 7) then {robberyreward = 7500; hint "20! Fast perfekt! Du hast gewonnen!";};
				if (_number == 8) then {robberyreward = 0; hint "10! Damit gewinnst du... gar nichts!";};
				if (_number == 9) then {robberyreward = 0; hint "11! L wie Loooooser!";};
				if (_number == 10) then {robberyreward = 10000; hint "21!!! Jackpot!!";};
				life_action_inUse = true;
	

sleep 2;
_robberycash = robberyreward;
_timer = time + (1 * 5);	
_toFar = false;
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = if(round(_timer - time) > 60) then {format["%1 minute(s)",round(round(_timer - time) / 60)]} else {format["%1 second(s)",round(_timer - time)]};
	hintSilent format["Du musst am Tisch bleiben und warten bis du dran bist!\n\nTime Remaining:\n %1\n\nDistance: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 5) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {hint "Du wurdest getazed, Spiel fehlgeschlagen!";};
};

switch(true) do
{
	case (_toFar):
	{
		hint "Du bist zu weit entfernt, bleib am Tisch";
		_denied1 = false;
		life_action_inUse = false;
	};
	
	case (!alive player):
	{
		hint "Das Spiel ist schiefgelaufen, weil du gestorben bist.";
		_denied1 = false;
		life_action_inUse = false;
	};
	
	case (life_istazed):
	{
		hint "Du wurdest getazed, Spiel fehlgeschlagen!";
		_denied1 = false;
		life_action_inUse = false;
	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["Du hast $%1 gewonnen.", _robberycash];
		life_cash = life_cash + _robberycash;
		_denied1 = false;
		life_action_inUse = false;
	};	
};

sleep 10;
blackjack addAction["Black Jack spielen ($2500)",life_fnc_blackjack,"blackjack"];
life_action_inUse = false;