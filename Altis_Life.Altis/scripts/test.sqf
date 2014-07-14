while {true} do 
{
_number = floor(random 10);
_marker = switch (_number) do {
   case 0: {"npc_1"};
   case 1: {"npc_2"};
   case 2: {"npc_3"};
   case 3: {"npc_4"};
   case 4: {"npc_5"};
   case 5: {"npc_6"};
   case 6: {"npc_7"};
   case 7: {"npc_8"};
   case 8: {"npc_9"};
   case 9: {"npc_10"};
};
_dist = random 700;
_dir = random 360;
_pos = getmarkerpos _marker;
_position = [(_pos select 0) + (sin _dir) * _dist, (_pos select 1) + (cos _dir) * _dist, 0];  
diag_log format["Marker ID:%1", _number];
diag_log format["XYZ:%1", _position];
_grp = createGroup east;
_unit = _grp createUnit ["I_Soldier_02_F", _position, [], 100, "NONE"]; 
_unit removeWeapon "arifle_Mk20_ACO_pointer_F";
_unit removeWeapon "hgun_ACPC2_F";
_unit addAction["Rebellenwaffen",life_fnc_weaponShopMenu,"rebel",0,false,false,"",' playerSide == civilian'];
_unit addAction["<t color='#ADFF2F'>ATM</t>",life_fnc_atmMenu,"",0,FALSE,FALSE,"",' vehicle player == player && player distance _target < 6 '];
_unit enableSimulation false;
_unit allowDamage false;
sleep 0.2;
createMarkerLocal ["Secret",(getPosATL _unit)];
"Secret" setMarkerTextLocal "hello i'm here";
"Secret" setMarkerColorLocal "ColorBlue";
"Secret" setMarkerTypeLocal "loc_Lighthouse";
sleep 3;
//[[[1],"Der Geheime Händler ist eingetroffen!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;



sleep (1 * 60); 
deleteVehicle _unit;
deleteMarkerLocal "Secret";
};